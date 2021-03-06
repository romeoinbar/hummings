/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : uaconsul_humming

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-09-10 22:21:58
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_addon_image
-- ----------------------------
INSERT INTO `tbl_addon_image` VALUES ('1', '1', 'images/addon/12.JPG');
INSERT INTO `tbl_addon_image` VALUES ('4', '1', 'images/addon/4.png');
INSERT INTO `tbl_addon_image` VALUES ('5', '1', 'images/addon/5.jpg');
INSERT INTO `tbl_addon_image` VALUES ('6', '3', 'images/addon/6.jpg');
INSERT INTO `tbl_addon_image` VALUES ('7', '277', 'images/addon/7.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_address_book
-- ----------------------------
INSERT INTO `tbl_address_book` VALUES ('1', '0', 'Mr', '', 'Freind 1', 'Friend Company !', '10', '11', '', '249 simpang lima', '', '', '', '32010', 'Sitiawan', '', 'MY', '0124525749', '', '', '', '', '', '', '', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('3', '6', 'Mr', '', 'Lee', '', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', '96938443', '', '', '', '', '', '', 'lee@ua-consultants.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('4', '6', 'Mr', '', 'test', 'test', '1', '1', '1', '1', '1', '1', '1', '1', 'HCM', '', 'SG', '123455666', '', '', '', '', '', '', 'abc@abc.com', '123456', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('10', '6', 'Ms', 'a', 'Ke xin', 'aa', 'a', 'a', 'a', 'a', '', '', '', 'a', 'a', 'a', 'SL', '123445566', '', '', '', '', '', '', 'kexin@hotmail.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('11', '2', 'Mr', 'Toh', 'Charles', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '', '200001', 'city', 'state', 'SG', '12345656', '65', '', '', '', '', '', 'charles@abc.com', '', '', '1', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('13', '0', 'Mr', '', 'Alex', '', '', '', '', '12344', '', '', '', '123456', '', '', 'SG', '123456', '', '', '', '', '', '', 'alex@aa.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('15', '9', 'Mrs', 'Nguyen', 'Anh', 'Ua-consultant', '', '', '', 'Nguyen Van Linh', '', '', '', '123456', 'HCM', '', 'VN', '', '', '', '', '', '', '', '', '', '', '2', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('16', '8', 'Mr', 'asfddas', '', '', '', '', 'fadsfads', 'sdf', 'fds', 'fds', 'sdfsd', '1234', 'wrwer', '', 'SG', '', '', '', '', '', '', '', '', '', '', ' ', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('17', '2', 'Mr', 'Vo', 'Nam', '', '167', '11#11', 'Far East Building ', '124, ace road', '', '', '', '300006', '', '', 'SG', '12345678', '', '', '', '', '', '', 'nam@abc.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('18', '33', 'Mr', 'mruugan', 'bala', '', 'blk 50', '#12-845', '', 'chai chee st', '', '', '', '460150', '', '', 'SG', '97203694', '', '', '', '64103024', '', '', 'bala@noel.com.sg', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('19', '0', 'Mr', 'duraiswam', 'bala', 'abc saravanantai ', 'blk 5689', '#90-232', 'tai seng building', 'tai seng drive 76868', '', '', '', '547383', '', '', 'SG', '97894848', '', '', '', '83939303', '', '', 'dbala2004@gmail.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('20', '36', ' ', 'mano', 'varun', 'standard charted', 'blk 123', '#234-343', 'sembawang', 'admirality', '', '', '', '235767', '', '', 'SG', '32555474', '', '', '', '23544768', '', '', 'vinoth_167@yahoo.co.in', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('21', '38', 'Mrs', 'ganesh', 'rupa', 'mano', 'blk 34', '234-34', 'mambo', 'freeze', '', '', '', '3425343', '', '', 'SG', '324454353', '', '', '', '435465454', '', '', 'satheesh.manoharan@gmail.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('22', '39', 'Mr', 'rar', 'babu', 'huge', 'blk 121', '12- 232', 'extra', 'view', '', '', '', '34286923', '', '', 'SG', '54363445', '', '', '', '45654345', '', '', 'samvarun@gmail.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('23', '40', 'Ms', 'ra', 'reshma', 'young', 'blk 34', '3242', 'good', 'bad', '', '', '', '436457', 'sg', 'sg', 'SG', '124323432', '', '', '', '354354765', '', '', 'santhoshraj@gmail.com', '43645756', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('24', '40', 'Mrs', 'jo', 'roja', 'number', 'blk 234', '423', 'soon', 'morning', '', '', '', '325435433', 'sg', 'sg', 'SG', '235435435', '', '', '', '45365365', '', '', 'murugan12@gmail.com', '45345666', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('25', '41', 'Mr', 'Sir', 'vinoth', 'noel', 'blk 543', '23432', 'value', 'strength', '', '', '', '454532', 'fg', 'dg', 'SG', '34536455', '', '', '', '43474545', '', '', 'vinoth167@gmail.com', '5756435', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('26', '42', 'Mr', 'vinoth', 'vinoth', 'vinoth', 'blk 232', '323', 'vin', 'vinoth', '', '', '', '3243232', 'vi', 'no', 'SG', '2349692837', '', '', '', '3487239793', '', '', 'vinoth167@gmail.com', '3294872398', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('27', '42', 'Mr', 'varun', 'varun', 'varun', 'blk 232', '233', 'var', 'varun', '', '', '', '47873948', 'va', 'run', 'SG', '3454353', '', '', '', '4355345', '', '', 'varunkumar@gmail.com', '3453443', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('28', '42', 'Mr', 'bala', 'bala', 'bala', 'blk 231', '2837', 'bala', 'ba', '', '', '', '87868', 'la', 'ba', 'SG', '23862837', '', '', '', '29327927', '', '', 'bala@noel.com.sg', '97397393', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('29', '42', 'Mr', 'saravanan', 'sara', 'sara', 'blk 232', '2322', 'sara', 'vanan', '', '', '', '8687577', 'ravan', 'sara', 'SG', '9793749389', '', '', '', '34987389789', '', '', 'saravanan@gmail.com', '32389283028', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('30', '42', 'Mrs', 'sara', 'arthy', 'arthy', 'blk 343', '4872', 'arthy', 'thy', '', '', '', '3849822', 'ar', 'thy', 'SG', '9876437598', '', '', '', '8439848547', '', '', 'arthy.sweety@gmail.com', '9874359374', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('31', '42', 'Ms', 'elk', 'elakkiya', 'arthy', 'blk 121', '121', 'elkk', 'elakkiya', '', '', '', '8687', 'kki', 'yya', 'SG', '8698769879', '', '', '', '8686899879', '', '', 'elakkiya@gmail.com', '3246456443', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('32', '42', 'Ms', 'oviya', 'oviya', 'oviya', 'blk 23', '232', 'oviya', 'oviya', '', '', '', '326982', 'ovi', 'ya', 'SG', '32849328798', '', '', '', '32879797993', '', '', 'oviya@gmail.com', '32433555555', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('33', '42', 'Mr', 'mam', 'mambo', 'mambo', 'blk 123', '2131', 'mambo', 'bo', '', '', '', '83453434', 'mam', 'mbo', 'SG', '865938794', '', '', '', '376487223', '', '', 'mambo@gmail.com', '938649236', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('34', '42', 'Mr', 'raja', 'raja', 'raja', 'blk 23', '098', 'raja', 'raaa', '', '', '', '8768768', 'jaaa', 'raaaa', 'SG', '7856786868', '', '', '', '8587878686', '', '', 'raja@gmail.com', '5436536366', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('35', '42', 'Mrs', 'roja', 'roja', 'roja', 'blk 454', '43534', 'rooo', 'jaaaa', '', '', '', '34534', 'roja', 'jaro', 'SG', '6869709', '', '', '', '3442432', '', '', 'roja@gmail.com', '3454656', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('36', '46', 'Mr', 'æŽ', 'å…‰è€€', '', '99', '#30-1', 'Premium Building', 'Sentosa St 1, Gold Coast', '', '', '', '563122', 'SG', '', 'SG', '99999999', '', '', '', '', '', '', 'gy@singtel.net', '', '', '2', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('37', '46', 'Mr', 'Ngooi', 'Tiang Ghee', '', '535', '#10-10', 'Far East Flora', 'Street Far East, Wild Wild West Road', '', '', '', '740125', 'SG', '', 'SG', '12345678', '', '', '', '', '', '', 'ntg@singtel.net', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('38', '48', 'Mr', 'Sidharta ', 'Gautama', '', '55', '#01-02', '', 'Street of London', '', '', '', '222456', 'SG', 'State', 'SG', '45674567', '', '', '', '', '', '', 'sd@hv.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('39', '48', 'Mr', 'Christ', 'Lexus', '', '5', '#05-05', '', 'Street of Jeruselum', '', '', '', '123456', 'SG', '', 'SG', '12345678', '', '', '', '', '', '', 'cl@cl.com', '', '', '', '0000-00-00');
INSERT INTO `tbl_address_book` VALUES ('40', '47', 'Mr', 'Rihanna', 'Teo', '', '45', '#10-10', '', 'US Street', '', '', '', '456456', 'SG', 'SG', 'SG', '123123', '', '', '', '', '', '', 'SG@sg.com', '', '', ' ', '1977-05-05');
INSERT INTO `tbl_address_book` VALUES ('41', '47', 'Ms', 'TT', 'Teo', '', '15', '#05-05', 'Pearl Bilding ', 'China Town&#39;s Road', '', '', '', '465456', 'SG', '', 'SG', '546789', '', '', '', '', '', '', 'brightleee@hotmail.com', '', '', '2', '1984-05-05');
INSERT INTO `tbl_address_book` VALUES ('42', '0', 'Mr', 'dfgdfgdf', 'test', 'sdf', '', '', '', 'dfgdg', '', '', '', '322', '', '', 'SG', '7686867', '', '', '', '', '', '', 'test@noe..com.sg', '', '', '', '0000-00-00');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_ratings
-- ----------------------------
INSERT INTO `tbl_cart_ratings` VALUES ('1', '1', '8', '3', '2.0', '0', '2012-06-13 15:51:05', '63', '2012-06-13 15:51:05', '64');
INSERT INTO `tbl_cart_ratings` VALUES ('6', '3', '2', '1', '2.0', '1', '2012-06-11 19:00:23', '0', '2012-06-11 19:00:23', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('3', '9', '1', '1', '1.0', '1', '2012-06-11 15:42:55', '0', '2012-06-11 15:42:55', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('7', '8', '3', '1', '3.0', '1', '2012-06-14 12:10:02', '0', '2012-06-14 12:10:02', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('8', '277', '4', '1', '4.0', '1', '2012-07-31 09:06:43', '0', '2012-07-31 09:06:43', '0');
INSERT INTO `tbl_cart_ratings` VALUES ('9', '92', '1', '1', '1.0', '1', '2012-08-01 16:18:59', '0', '2012-08-01 16:18:59', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cart_rating_reviews
-- ----------------------------
INSERT INTO `tbl_cart_rating_reviews` VALUES ('1', '1', 'nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '5', '1', '5.00', '0', '127.0.0.1', '1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('2', '1', '  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower  nice flower', '0', '3', '1', '3.00', '0', '127.0.0.1', '1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('8', '3', 'For questions about orders or general enquiries please contact : For questions about orders or general enquiries please contact : ', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-11 19:00:23', '8', '2012-06-11 19:00:23', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('9', '1', 'ahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssssahhfdgsssssssssss\r\n', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-13 15:51:05', '8', '2012-06-13 15:51:05', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('5', '9', 'For questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\nFor questions about orders or general enquiries please contact :\r\n', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-11 15:42:55', '8', '2012-06-11 15:42:55', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('10', '8', 'beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////beautiful gifts of flowers////', '0', '0', '0', '0.00', '1', '0', '1', '2012-06-14 12:10:02', '8', '2012-06-14 12:10:02', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('11', '277', 'review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review  review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review review review review review review v review review review ', '0', '0', '0', '0.00', '1', '0', '1', '2012-07-31 09:06:43', '2', '2012-07-31 09:06:43', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_cart_rating_reviews` VALUES ('12', '92', 'please write a (short) review.... please write a (short) review.... please write a (short) review.... please write a (short) review.... please write a (short) review.... ', '0', '0', '0', '0.00', '1', '0', '1', '2012-08-01 16:18:59', '2', '2012-08-01 16:18:59', '0', '0000-00-00 00:00:00', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- ----------------------------
-- Records of tbl_cart_rating_votes
-- ----------------------------
INSERT INTO `tbl_cart_rating_votes` VALUES ('1', '1', '5', '127.0.0.1', '2012-05-17 08:58:07', '2', '2012-05-17 08:58:07', '63');
INSERT INTO `tbl_cart_rating_votes` VALUES ('2', '1', '3', '127.0.0.1', '2012-05-17 09:41:41', '6', '2012-05-17 09:41:41', '64');
INSERT INTO `tbl_cart_rating_votes` VALUES ('8', '3', '2', '0', '2012-06-11 19:00:23', '8', '2012-06-11 19:00:23', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('5', '9', '1', '0', '2012-06-11 15:42:55', '8', '2012-06-11 15:42:55', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('9', '1', '0', '0', '2012-06-13 15:51:05', '8', '2012-06-13 15:51:05', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('10', '8', '3', '0', '2012-06-14 12:10:02', '8', '2012-06-14 12:10:02', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('11', '277', '4', '0', '2012-07-31 09:06:43', '2', '2012-07-31 09:06:43', '0');
INSERT INTO `tbl_cart_rating_votes` VALUES ('12', '92', '1', '0', '2012-08-01 16:18:59', '2', '2012-08-01 16:18:59', '0');

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
INSERT INTO `tbl_configuration` VALUES ('config_sitename', '');
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
INSERT INTO `tbl_configuration` VALUES ('config_send_mail', '0');
INSERT INTO `tbl_configuration` VALUES ('config_point_to_SGD', '1');
INSERT INTO `tbl_configuration` VALUES ('config_admin_email', 'info@ua-solutions.com');
INSERT INTO `tbl_configuration` VALUES ('config_seo', '0');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_default', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_desc_cart', '');
INSERT INTO `tbl_configuration` VALUES ('config_meta_keyword_cart', '');
INSERT INTO `tbl_configuration` VALUES ('config_contactus', '<strong style=\"color:#999;\">Address:</strong><br />\r\n<p>Humming Flowers &amp; Gifts Pte Ltd<br />\r\n7 Tai Seng Drive #03-02 Singapore 535218.</p>\r\n<p><strong style=\"color:#999;\">Business Hours:</strong><br />\r\n9:00am to 5:30pm (Monday to Friday)<br />\r\n9:00am to 2:30pm (Saturday)</p>\r\n<p><strong style=\"color:#999;\">Company Registration:</strong> 200723806K</p>');
INSERT INTO `tbl_configuration` VALUES ('config_gst', '7');
INSERT INTO `tbl_configuration` VALUES ('config_delivery_charge', '6');

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_content
-- ----------------------------
INSERT INTO `tbl_content` VALUES ('28', 'customised-floral-arch', '13', 'Customised Floral Arch', '', '<p>Customised Floral Arch</p>\r\n<p>Commemorate the special event with Humming\\\'s show-stealing digitally customised banner floral stand. Corporate logos and pictures can be included too. Please provide us images (min 200 dpi) at least one working day in advance.</p>', '<p><img alt=\\\"\\\" width=\\\"361\\\" height=\\\"500\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO115.jpg\\\" /></p>\r\n<p>HGO115 Blooming Arch $200 ($214.00 with GST)</p>\r\n<p><em>Approx. 180cm X 130cm</em></p>\r\n<p><img alt=\\\"\\\" width=\\\"383\\\" height=\\\"500\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO116.jpg\\\" /></p>\r\n<p>HGO116 Rosy Arch $250 ($267.50 with GST)</p>\r\n<p><em>Approx. 180cm X 130cm</em></p>\r\n<p><img alt=\\\"\\\" width=\\\"378\\\" height=\\\"500\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO117.jpg\\\" /></p>\r\n<p>HGO117 Spring Arch $200 ($214.00 with GST)</p>\r\n<p><em>Approx. 180cm X 130cm</em></p>\r\n<p><img alt=\\\"\\\" width=\\\"372\\\" height=\\\"500\\\" src=\\\"http://www.ua-mktg.com/humming/images/HGO118.jpg\\\" /></p>\r\n<p>HGO118 Flourishing Arch $250 ($267.50 with GST)</p>\r\n<p><em>Approx. 180cm X 130cm</em></p>', 'Admin', '2012-07-06 16:58:56', 'Admin', '2012-07-26 10:20:04', '0', '0', '1');
INSERT INTO `tbl_content` VALUES ('6', 'privacy-notice', '3', 'Privacy Notice', '', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order. Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary. You may opt-out of receiving future mailings; see the choice/opt-out instructions below.</p>', '<p>We respect your right to privacy. At Humming, we collect only the information necessary for us to complete your order and/or to contact you regarding the status of your order. Our site uses an order form to collect the recipient details and your billing information (like credit card details) to fulfill your order/s. The sender\\\\\\\\\\\\\\\'s contact information is also used to get in touch with the visitor, when necessary. You may opt-out of receiving future mailings; see the choice/opt-out instructions below.<br />\r\n<br />\r\nHumming will not rent, sell or share your name or personal information without your permission.<br />\r\n<br />\r\nOn occasion we may send you an email including special promotions or new releases. If you choose not to receive such communications, you may unsubscribe by emailing us at <a href=\\\"\\\\&quot;\\\\\\\\&quot;mailto:goto@humming.com.sg\\\\\\\\&quot;\\\\&quot;\\\">goto@humming.com.sg</a>.<br />\r\n<br />\r\nHumming reserves the right to update this privacy policy at anytime. Updates to our Privacy Notice will be posted on the Humming site. This policy is not intended to confer, and does not confer, any rights or remedies.</p>', 'Admin', '2012-06-19 10:07:53', 'Admin', '2012-07-05 16:32:45', '7', '0', '1');
INSERT INTO `tbl_content` VALUES ('7', 'about-us', '3', 'About Us', '', '<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming House) was incorporated in Jan 2007. We are one of the leading gifting companies in Singapore specialising in customisable flowers and gifts. Our suite of over 900 flowers and gifts ideas all come with greeting cards for that extra personal touch.</p>', '<p style=\\\"text-align: center\\\"><strong><span style=\\\"color: rgb(126,50,96)\\\"><span style=\\\"font-size: medium\\\"><em>&quot;At Humming Gifts, we do everything with you in mind.&quot;</em></span></span></strong></p>\r\n<p>Humming Flowers &amp; Gifts Pte Ltd (previously Humming House) was incorporated in Jan 2007. We are one of the leading gifting companies in Singapore specialising in customisable flowers and gifts. Our suite of over 900 flowers and gifts ideas all come with greeting cards for that extra personal touch.</p>\r\n<p>Humming\\\'s Flowers and Gifts Catalogue 2012 alone features over 600 flowers and gifts ideas. An expert in local gifting customs, Humming has built a loyal customer base of individuals and corporations for over more than a decade. We aim to further strengthen our brand and remain committed to introducing new and unique gifting experiences. Humming continues to pride itself with providing unparalleled service, innovative and exciting ideas for customers &ndash; \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting customs, allows the company to create truly unique gifting experiences for any occasion.Humming\\\'s Flowers and Gifts Catalogue 2012 alone features over 600 flowers and gifts ideas. An expert in local gifting customs, Humming has built a loyal customer base of individuals and corporations for over more than a decade. We aim to further strengthen our brand and remain committed to introducing new and unique gifting experiences. Humming continues to pride itself with providing unparalleled service, innovative and exciting ideas for customers &ndash; \\\'With you in mind\\\'. Humming\\\'s invaluable knowledge in local gifting customs, allows the company to create truly unique gifting experiences for any occasion.</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Mission</strong></span></span></p>\r\n<p>Creating a unique gifting experience with you in mind, we as an up-and-coming hampers, flowers and gifts company will propel ahead by</p>\r\n<ol>\r\n    <li>Challenging the status quo and industry standards by coming up with eye-catching hampers, flowers and gift creations</li>\r\n    <li>Staying personable and going out of the way to understand and meet customers\\\' needs</li>\r\n    <li>Staying nimble and flexible to meeting the requirements of our customers\\\' needs</li>\r\n    <li>Increasing productivity and delivering consistent customer service by leveraging on our operating systems and resources</li>\r\n</ol>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Brand Promise</strong></span></span></p>\r\n<p>Led by a passion to create a unique gifting experience with you in mind, we will stay true to our promise by observing:</p>\r\n<p>Quality: Product quality and freshness</p>\r\n<p>Service: Personalised and prompt service</p>\r\n<p>Creative: Attractive designs that leave a good impression</p>\r\n<p>Value: High perceived value, affordable price propositions</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>With You In Mind (Brand Story)</strong></span></span></p>\r\n<p>Humming Gifts is like a close friend who never leaves your side.</p>\r\n<p>When you need gifting service, we will offer you ours.</p>\r\n<p>When you need our service, we will respond to you attentively.</p>\r\n<p>When you have a gifting need to fulfil, we will do our best to help you.</p>\r\n<p>Understanding your gifting needs and preferences,</p>\r\n<p>While honouring Asian gifting-giving cultures and customs,</p>\r\n<p>We can advise you on even small details,</p>\r\n<p>Some of which you may not have thought of.</p>\r\n<p>Trendy and creative, we also provide you with</p>\r\n<p>Fresh and exceptional ideas &ndash; and keep our gifts affordable.</p>\r\n<p>For whatever we do, it is always with you in mind.</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Service Values</strong></span></span></p>\r\n<p>Attentiveness<br />\r\nPutting ourselves constantly in the position of our customers, we pride ourselves on our ability to satisfy them with our superior customer service and attention to details.</p>\r\n<p>Personal touch<br />\r\nWe an in-depth knowledge of our customers\\\' gifting needs and preference, we are able to provide them with a highly personable service that is close to their hearts.</p>\r\n<p>Dependability<br />\r\nBy leveraging on a potent combination of technology and teamwork, we are able to ensure consistently high levels of quality service and speed in our delivery.</p>\r\n<p>Versatility<br />\r\nKeeping our customers\\\' gifting requirements, we are able to come up with creations that have the \\\'X\\\' factor &ndash; eXceptional and eXciting</p>\r\n<p><span style=\\\"color: rgb(96,0,56)\\\"><span style=\\\"font-size: small\\\"><strong>Logo</strong></span></span></p>\r\n<p>Our brand identity shows a ribbon morphing into a Chinese knot to reflect Humming\\\'s expertise in Chinese gifting customs.</p>\r\n<p style=\\\"text-align: center\\\"><img alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/logo1.png\\\" /></p>\r\n<p>&quot;H&quot; is embedded in the centre of it all, just like Humming always immerses itself in your needs, It is always thinking ahead and going the extra mile to present thoughtfully put-together gifts, With you in mind.</p>', 'Admin', '2012-06-20 15:25:34', 'Admin', '2012-07-05 17:25:04', '1', '0', '1');
INSERT INTO `tbl_content` VALUES ('8', 'press', '3', 'Press', '', '<p>Press Release</p>', '<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Chinese New Year 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Teaching university student to make a Chinese New Year hamper, Omy.sg, January 10</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://yzone.omy.sg/index.php?articleID=20537&amp;option=com_article&amp;task=detail&amp;cid=203&amp;type\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://yzone.omy.sg/index.php?articleID=20537&amp;option=com_article&amp;task=detail&amp;cid=203&amp;type</span></a>=<o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Prosperity Treasure Chest, Herworldplus.com, January 11</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.herworldplus.com/shopping/updates/shopping-updates-what-buy-chinese-new-year\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.herworldplus.com/shopping/updates/shopping-updates-what-buy-chinese-new-year</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Abundance Luck Hampers From Humming Flowers &amp; Gifts, 8 Days, January 19</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://lifestyle.xin.msn.com/en/magazine/8-days/feature.aspx?cp-documentid=5776697\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://lifestyle.xin.msn.com/en/magazine/8-days/feature.aspx?cp-documentid=5776697</span></a></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Valentine\\\'s Day 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Best Valentine&rsquo;s Day Gifts, Timeoutsingapore.com, January 27</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.timeoutsingapore.com/shopping/feature/best-valentines-day-gifts-2012#picture5\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.timeoutsingapore.com/shopping/feature/best-valentines-day-gifts-2012#picture5</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">10 over-the-top Valentine\\\'s Day gift ideas - A S$2,500 bouquet of roses, Xin.msn.com, February 1</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://lifestyle.xin.msn.com/en/sex-relationships/article.aspx?cp-documentid=5829435&amp;page=8\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://lifestyle.xin.msn.com/en/sex-relationships/article.aspx?cp-documentid=5829435&amp;page=8</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Humming Flowers &amp; Gifts Introduces First Drive-Thru Collection For Valentine&rsquo;s Day Bouquets, Whatshappening.sg, February</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.whatshappening.sg/events/index.php?com=detail&amp;eID=61219&amp;year=2012&amp;month=02\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.whatshappening.sg/events/index.php?com=detail&amp;eID=61219&amp;year=2012&amp;month=02</span></a><o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">So You Want To Buy Her Roses&hellip;, Menshealth.com.sg, February 9</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.menshealth.com.sg/sex-relationships/so-you-want-buy-her-roses\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.menshealth.com.sg/sex-relationships/so-you-want-buy-her-roses</span></a><b><o:p></o:p></b></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></u></b></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Let 91.3&rsquo;s Valentine&rsquo;s Day Romance Repair Crew service you!, Radio 91.3 Facebook, February 12</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"https://www.facebook.com/photo.php?fbid=10150624010615101&amp;set=a.10150624008640101.415632.28388245100&amp;type=3&amp;theater\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">https://www.facebook.com/photo.php?fbid=10150624010615101&amp;set=a.10150624008640101.415632.28388245100&amp;type=3&amp;theater</span></a><o:p></o:p></span><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\">&nbsp;<o:p></o:p></span></p>\r\n<p><b><u><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Humming Flowers &amp; Gifts Introduces First Drive-Thru Collection For Valentine&rsquo;s Day Bouquet. SgLinks.com, February 11</span></u></b></p>\r\n<p><span style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://sglinks.com/pages/2721599-february-th-humming-flowers-gifts-introduces-first-drive\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://sglinks.com/pages/2721599-february-th-humming-flowers-gifts-introduces-first-drive</span></a><o:p></o:p></span>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><b><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">Baby Diaper Cake Giveaway 2012</span></b></span></p>\r\n<p><b><u><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\">WIN over $10,000 worth of goodies! &ndash; Humming Flowers &amp; Gifts Baby Diaper Cake, Youngparents.com.sg, February</span></u></b></p>\r\n<p><span style=\\\"font-family: \\\'Arial\\\',\\\'sans-serif\\\'; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-bidi-font-weight: bold\\\"><a href=\\\"http://www.youngparents.com.sg/promotions/%2410k-giveway\\\"><span style=\\\"color: windowtext; text-decoration: none; text-underline: none\\\">http://www.youngparents.com.sg/promotions/%2410k-giveway</span></a><o:p></o:p></span></p>', 'Admin', '2012-06-20 15:26:58', 'Admin', '2012-07-10 13:37:02', '3', '0', '0');
INSERT INTO `tbl_content` VALUES ('9', 'sitemap', '3', 'Sitemap', '', '<p>Coming soon...</p>', '<p>Coming soon...</p>', 'Admin', '2012-06-20 15:27:38', 'Admin', '2012-07-23 11:18:40', '0', '0', '0');
INSERT INTO `tbl_content` VALUES ('10', 'careers', '3', 'Careers', '', '<p>Jobs and Careers</p>', '<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><u><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Jobs and Careers<o:p></o:p></font></font></span></u></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Careers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">With our customers in mind,<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">With you in mind as an individual,<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Come join us now in this journey of unique gifting experience.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Position:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Senior Graphic Designer<o:p></o:p></font></font></span></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Application:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Open</font></span></strong><b style=\\\"mso-bidi-font-weight: normal\\\"><br />\r\n<strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Number of Vacancies: 1<o:p></o:p></font></span></strong></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Job scope:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Provide concept, layout and design for company and marketing collaterals <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Able to handle design projects from concept to final artwork<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l3 level1 lfo1\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Assist various departments in designing support if necessary<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Requirements:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">At least 5 years of related work experience <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Committed to working in both a team and yet, proactive and able to work independently<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Appreciates flowers and gifts<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Fast learner, enthusiastic and determined personality<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Good communication and graphic skills<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Fluent in English and Mandarin to do designing with Chinese text<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l1 level1 lfo2\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Only Singaporeans and Singapore PRs need to apply <o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Position:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Administrative Assistant <o:p></o:p></font></font></span></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Application:<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Open</font></span></strong><b style=\\\"mso-bidi-font-weight: normal\\\"><br />\r\n<strong><span style=\\\"font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \\\'Times New Roman\\\'; mso-bidi-theme-font: minor-bidi\\\"><font size=\\\"3\\\">Number of Vacancies: 2<o:p></o:p></font></span></strong></b></p>\r\n<p class=\\\"MsoNoSpacing\\\" style=\\\"margin: 0cm 0cm 0pt\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Job scope:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">To attend to walk-in customers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Handling of gift rewards redemption<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; mso-list: l2 level1 lfo3\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Filing, mailing, invoicing and other administrative tasks<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Requirements:<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Minimum N or O levels<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Pleasant personality<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Able to liaise with both English and Chinese speaking customers<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\">Knowledge in Hanyu Pinyin an added advantage<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; mso-add-space: auto; mso-list: l0 level1 lfo4\\\"><span lang=\\\"EN-US\\\" style=\\\"font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; mso-ansi-language: EN-US\\\"><span style=\\\"mso-list: Ignore\\\"><font size=\\\"3\\\">&middot;</font><span style=\\\"font: 7pt &quot;Times New Roman&quot;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Singaporeans /PRs only<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><o:p><font size=\\\"3\\\" face=\\\"Calibri\\\">&nbsp;</font></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Remuneration package will commensurate with experience and qualifications.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\">Interested applicants, please send your detailed resume with recent photo, stating current salary and expected pay.<o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span lang=\\\"EN-US\\\"><font size=\\\"3\\\" face=\\\"Calibri\\\">Submit all job enquires and applications to </font><a href=\\\"mailto:careers@humming.com.sg\\\"><font color=\\\"#0000ff\\\" size=\\\"3\\\" face=\\\"Calibri\\\">careers@humming.com.sg</font></a><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-06-20 15:28:02', 'Admin', '2012-07-06 11:10:19', '6', '0', '1');
INSERT INTO `tbl_content` VALUES ('18', 'service-policy', '3', 'Service Policy', '', '<div class=\\\"cmsheader\\\" style=\\\"margin-bottom: 15px\\\"><span style=\\\"font-weight: 600\\\">General Terms and Conditions</span></div>', '<div class=\\\"cmsheader\\\" style=\\\"margin-bottom: 15px\\\"><span style=\\\"font-weight: 600\\\">General Terms and Conditions</span></div>\r\n<p class=\\\"heady\\\">Delivery and Orders</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>All prices are in Singapore Currency.</li>\r\n    <li>Goods &amp; Services Tax (GST) of 7% is applicable on all products and services.</li>\r\n    <li>An automated reply will confirm your placed order.</li>\r\n    <li>For delivery of orders, there will be a charge of $ 6.42 (w/GST).</li>\r\n    <li>Deliveries to Sentosa / Cargo / Changi Airport / PSA / Marina Bay Sands will incur delivery charges of $ 13.91 (w/GST).</li>\r\n    <li>Orders placed on a Saturday after 2pm will be delivered on the next working day after 2pm (ie. Monday).</li>\r\n    <li><strong>Christmas</strong> &amp; <strong>Lunar New Year\\\'s</strong> hamper orders will have to be <strong>ordered in advance</strong>.</li>\r\n    <li>Humming reserves the right to not accept any order depending on circumstances</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">How to Order</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>Call us : 6844-2222</li>\r\n    <li>Fax us : 6844-2223</li>\r\n    <li>Order online : www.hummings.com</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Normal Business Hours</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>9:00am to 6:15pm (Monday to Friday)</li>\r\n    <li>9:00am to 2:00pm (Saturday)</li>\r\n    <li>Closed (Sunday)</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Extended Business Hours</p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>9 January 2012 to 20 January 2012 only<br />\r\n    <br />\r\n    <ul style=\\\"margin-left: 20px\\\">\r\n        <li>Monday to Friday : 9am-8pm</li>\r\n        <li>Saturday : 9am-5pm</li>\r\n        <li>Sunday : 10am-2pm</li>\r\n        <li>Lunar New Year Eve: 9am-11am</li>\r\n    </ul>\r\n    <br />\r\n    &nbsp;</li>\r\n    <li>Closed on 22, 23, 24 and 25 January 2012, Monday and Tuesday respectively</li>\r\n    <li>Normal business hours will resume on 26 January 2012, Thursday</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\">Order Delivery Schedule</p>\r\n<div class=\\\"bcj\\\">\r\n<table>\r\n    <tbody>\r\n        <tr>\r\n            <td class=\\\"dev\\\" style=\\\"font-size: 12px; font-weight: bold\\\">Order placed and confirmed</td>\r\n            <td class=\\\"dev\\\" style=\\\"font-size: 12px; font-weight: bold\\\">Delivery Schedules</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Before 12pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">same day after 2pm before 5pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 12pm-5pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">same day between 7.15pm-9.59pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 5pm-5.30pm (Mon-Fri)</td>\r\n            <td class=\\\"dev\\\">next day before 2pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Before 12pm (Sat)</td>\r\n            <td class=\\\"dev\\\">same day after 2pm before 5pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Between 12pm-2.00pm (Sat)</td>\r\n            <td class=\\\"dev\\\">same day before 7pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">After 2.00pm (Sat)</td>\r\n            <td class=\\\"dev\\\">next working day after 2pm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\\\"dev\\\">Sunday &amp; PH</td>\r\n            <td class=\\\"dev\\\">next working day after 2pm</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<div>&nbsp;</div>\r\n<div><b><u>Weekday</u></b></div>\r\n<div>. Between 7.00am and 8.00am (Surcharge of $25.00)<br />\r\n. Between 8.01am and 9.29am (Surcharge of $13.00)<br />\r\n. Between 9.30am and 2.00pm<br />\r\n. Between 2.00pm and 5.00pm<br />\r\n. Between 7.00pm and 9.59pm<br />\r\n. Between 10.00pm and 11.59pm (Surcharge of $25.00)<br />\r\n. Between 12.00am and 6.59pm (Surcharge of $50.00)</div>\r\n<div>&nbsp;</div>\r\n<div><b><u>Saturday</u></b></div>\r\n<div>. Between 7.00am and 8.00am (Surcharge of $25.00)<br />\r\n. Between 8.01am and 9.29am (Surcharge of $13.00)<br />\r\n. Between 9.30am and 2.00pm<br />\r\n. Between 2.00pm and 6.59pm<br />\r\n. Between 7.00pm and 10.59pm (Surcharge of $25.00)<br />\r\n. Between 11.00pm and 6.59am (Surcharge of $50.00)</div>\r\n<div>&nbsp;</div>\r\n<div>NO DELIVERY ON SUNDAYS AND PUBLIC HOLIDAYS.</div>\r\n<br />\r\n<span style=\\\"font-size: 14px; font-weight: bold\\\">Note:</span> Orders received via Internet or fax on Saturday after 2.00pm, Sunday &amp; Public Holiday can only be confirmed by the <b>NEXT</b> working day. As such, delivery can only be done after 2pm on that same day.<br />\r\n&nbsp;</div>\r\n<p class=\\\"heady\\\">Delivery Rates</p>\r\n<div class=\\\"bcj\\\">24 Hours Delivery and Express Delivery Service. Please Call Our Hotline (65) 6844 2222 for more details.</div>\r\n<p class=\\\"heady\\\">Surcharges</p>\r\n<div class=\\\"bcj\\\">\r\n<table cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" width=\\\"100%\\\">\r\n    <tbody>\r\n        <tr valign=\\\"top\\\">\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Monday - Friday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm -11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Saturday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 4.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">5.00pm - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm - 11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 37.45</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n            <td>\r\n            <div style=\\\"font-size: 11px; font-weight: bold\\\">Sunday / Public Holiday (with GST)</div>\r\n            <br />\r\n            <table>\r\n                <tbody>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">7.00am - 8.00am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">8.01am - 9.29am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 13.91</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">9.30am - 11.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 6.42</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Noon - 4.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 26.75</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">5.00pm - 9.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 37.45</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">10.00pm - 11.59pm</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 48.70</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">12 Midnight - 6.59am</td>\r\n                        <td class=\\\"dev\\\" style=\\\"font-size: 11px\\\">$ 53.50</td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            &nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\nDelivery is done according to our delivery schedule. Specific time delivery requests within the no charge timing will be taken into consideration based on the situation of our delivery schedule at the point of time.<br />\r\n<br />\r\n<div style=\\\"font-size: 11px; font-weight: bold\\\">Special Delivery - $21.40 (inclusive GST)</div>\r\n<br />\r\nCharges are for requested deliveries to be made at a particular time or within a tight specific time i.e. 2pm or between 2pm-2.30pm. Humming reserves the right not to accept this service if our resources are limited.</div>\r\n<p class=\\\"heady\\\"><strong>Valentine\\\'s Day</strong></p>\r\n<div class=\\\"bcj\\\">The prices of some flowers like roses are expected to increase during the period leading to Valentine\\\'s Day. New prices are effective regardless of when the order are placed. Arrangements and bouquets with roses shown online and in the catalogue will be subjected to price adjustments but can be substituted with other flowers with no price change.</div>\r\n<p class=\\\"heady\\\"><strong>Order Cancellation</strong></p>\r\n<div class=\\\"bcj\\\">\r\n<ul style=\\\"margin-left: 20px\\\">\r\n    <li>Cancellation of order must be made at least ONE day (24 hrs) in advance before the actual delivery date or a 50% of the selling price will be charged.</li>\r\n    <li>The FULL price of the order will be charged if a delivery was attempted but no recipient or that the address given was wrong. There will be a nominal delivery charge of S$13.91 (C.O.D.) if the order is redirected to another address as delivery contractors are paid based on per trip per address basis.</li>\r\n    <li>Please use our &quot;Contact Us&quot; or Tel: (65) 6844-2222 to inform us early.</li>\r\n</ul>\r\n</div>\r\n<p class=\\\"heady\\\"><strong>Substitution</strong></p>\r\n<div class=\\\"bcj\\\">Humming reserves the right to substitute any products that are out of stock with another with equivalent or higher in value.</div>\r\n<p class=\\\"heady\\\"><strong>Warranty of Goods / Services</strong></p>\r\n<div class=\\\"bcj\\\">Goods &amp; Services provided are assured of its intended purposes &amp; reliability.</div>\r\n<p class=\\\"heady\\\"><strong>Terms of Warranty</strong></p>\r\n<div class=\\\"bcj\\\">As provided by manufacturer or otherwise stated.</div>\r\n<p class=\\\"heady\\\"><strong>Exchange &amp; Refund</strong></p>\r\n<div class=\\\"bcj\\\">All goods sold are non-exchangeable and non-refundable.</div>\r\n<p><br />\r\n&nbsp;</p>', 'Admin', '2012-07-05 16:48:16', 'Admin', '2012-07-11 17:42:17', '2', '0', '1');
INSERT INTO `tbl_content` VALUES ('19', 'contact-us', '3', 'Contact Us', '', '<p>Contact Us</p>', '<p>For all questions about orders or general enquiries please contact:</p>\r\n<p><strong style=\\\"color: #999\\\">Email:</strong><br />\r\nenquiries@hummings.com.sg</p>\r\n<p><strong style=\\\"color: #999\\\">Telephone:</strong> <br />\r\n+65 6844 2222</p>\r\n<p><strong style=\\\"color: #999\\\">Fax:</strong><br />\r\n+65 6844 2223</p>\r\n<p><strong style=\\\"color: #999\\\">Address:</strong><br />\r\nHumming Flowers &amp; Gifts Pte Ltd<br />\r\n7 Tai Seng Drive #03-02 Singapore 535218.</p>\r\n<p><strong style=\\\"color: #999\\\">Business Hours:</strong><br />\r\n9:00am to 6:15pm (Monday to Friday)<br />\r\n9:00am to 2:00pm (Saturday)</p>', 'Admin', '2012-07-05 17:03:08', 'Admin', '2012-07-05 17:06:03', '8', '0', '1');
INSERT INTO `tbl_content` VALUES ('20', 'request-for-catalogue', '3', 'Request For Catalogue', '', '<p>Request For Catalogue</p>', '<p>Request for catalogue: enquiries@hummings.com.sg</p>', 'Admin', '2012-07-06 11:18:55', 'Admin', '2012-07-06 11:20:32', '5', '0', '1');
INSERT INTO `tbl_content` VALUES ('21', 'download-order-form', '3', 'Download Order Form', '', '<p>Download Order Form: PDF file</p>', '<p>Download Order Form: PDF file</p>', 'Admin', '2012-07-06 11:23:00', 'Admin', '2012-07-23 11:18:17', '4', '0', '0');
INSERT INTO `tbl_content` VALUES ('22', 'help-me-find-a-gift', '12', 'Help Me Find a Gift', '', '<p>Your personal gift guide: Starting with flowers.</p>\r\n<p><img width=\\\"260\\\" height=\\\"145\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/Purple roses.JPG\\\" /></p>', '<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"color: #993366\\\"><strong>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><img width=\\\"260\\\" height=\\\"145\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/Purple roses.JPG\\\" /></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Your Personal Gift Guide: Starting with flowers</span></span></p>\r\n</strong></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Need help to find a gift for someone? But yet you don&rsquo;t know how and where to start from? There are many kinds of gifts for the many different special occasions. Before you embark on the search, you would need to think of what is the gift for, for whom is the gift for and when, where and how is the gift going to be presented to the recipient? There are so many challenges to find the perfect gift but fret not with Humming Flowers and Gifts here for you.</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>What is a gift?</u></strong></span></span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">What is a gift? A gift is something from the bottom of your heart presented with the most sincere and thoughtful best wishes for the recipient. It speaks far more than what you want to convey to the recipient. Be it for love, friendship, gratitude or pure best wishes for the other party, a gift is something that is sacred and the meaning is wholesome. Recipients are able to receive warm best wishes from you just with a click of the mouse or a call away. The marvel of today&rsquo;s technology has enabled the gift to be presented and delivered to the recipient with such ease. Realise the joy of modern day gifting as you spread this happiness together with Humming.</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">However, even in the modern day gifting, it need not be an expensive gift. The most sincere and true gifts are not necessarily the most expensive and elaborate. Even a simple box of chocolates with a &lsquo;thank you&rsquo; card personally written speaks of your well wishes and thus true feelings can be felt. With over 800 flowers and gifts available, the art of gifting is taking the level of love and sincerity to greater heights. And at Humming, we always do things &hellip;With You In Mind. &nbsp;&nbsp;&nbsp;</span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>When&nbsp;and why&nbsp;do&nbsp;we buy a gift?</u></strong></span></span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">What do you buy for a girl on her birthday? What do you buy for a newly-wed couple on their wedding day? What do you buy for your father on his job promotion to celebrate? What do you buy for your sister to congratulate on her graduation day? What do you buy for your niece&rsquo;s first month birthday? There are many reasons to celebrate and there are many gifts to choose from. </span></span></div>\r\n<div style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">Gifting in the olden days may speak of many traditions and traditional items. This culture is seen through and brought to new heights with Humming. And in helping you to find a gift, we strive to bring to you the most unique gifting experience ever.</span></span></div>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><font face=\\\"Calibri\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Flower meaning</span></u></strong></span></span></font></span><font size=\\\"3\\\"><o:p></o:p></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Looking at the wide array of types of flowers available in the market, one can&rsquo;t help but feel overwhelmed. What type of flower do you choose for your partner and what type of flower do you buy for your parents? Surely they should be different types of flowers?<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span><span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">To add a level of depth to the meaning of your pretty flowers, send well wishes to someone with all your heartfelt feelings conveyed in the right type of flower gifts.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Different flowers carry different meanings and this is a unique aspect of its symbolism. We bring to you now some of our common favourites in Singapore!</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Carnation</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Red carnation signifies the sender&rsquo;s admiration for the recipient. White carnation signifies good luck. On any occasion you want to lend your support for someone, carnation is the best choice.</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Rose</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Red roses are the flower of love for the colour red signifies strong romantic feelings. An all-time-favourite for Valentine&rsquo;s Day, this pretty flower speaks of intense and passionate feelings.</span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"background-color: #ffffff\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u>Tulips</u></span></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\">Introducing a premium breed of flowers - tulip. Tulips signify perfect love and are valued for their brightly coloured, beautiful cup-shaped petals. Send the graceful and versatile tulips to someone for comfort or for romance.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Sunflower</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\"><u1:p></u1:p><o:p></o:p></span></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Sunflower signifies good luck, happiness and ambition. With its bright yellow petals and happy deposition, the sunflower makes an excellent housewarming gift! </span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Lily</span></u></span></span></span><font face=\\\"Calibri\\\"><font size=\\\"3\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US\\\">White Easter Lily signifies purity, innocence and virtue. Generally, lilies make an impressive statement of pure elegance. Send a wonderful lily bouquet today to create a striking impression with that special someone. <br />\r\n<br />\r\n</span></span></span><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Best Florist</span></u></strong></span></span></span><font size=\\\"3\\\"><o:p></o:p></font></p>\r\n<u1:p></u1:p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">What are the reasons which constitute for a good florist for you?</span></span></span><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"><u1:p></u1:p></span></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Having many varieties with a wide array of choices for every occasion provides customers the flexibility and convenience of a one-stop flowers and gifts destination. Many florists have also moved from the traditional brick-and-mortar stores to virtual online stores. Online stores provide convenience and shopping in the comfort of your own home with delivery services easily available at timing to your convenience. </span></span></span><o:p></o:p></p>\r\n<u1:p><u1:p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Established for over a decade ago, Humming Flowers and Gifts is a full-fledged flowers and gifts provider, reputable for being reliable, creative and innovative. We believe in creating quality gifts with our customers in mind. Humming Flowers and Gifts strives to bring to all customers our service values of attentiveness; lending a personal touch for personable service; dependability by leveraging on technology and teamwork and versatility by coming up with creations that are exceptional and exciting. Always &hellip;With You In Mind.&nbsp;<span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span></p>\r\n<p>&nbsp;</p>\r\n</u1:p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Visit our website at </span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-size: larger\\\"><span lang=\\\"EN-US\\\" style=\\\"line-height: 115%; mso-ansi-language: EN-US\\\"><a href=\\\"http://www.hummings.com/\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"line-height: 115%\\\">www.hummings.com</span></span></a></span><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"> as we take you through a unique gifting experience.</span></span></span></font><o:p></o:p></u1:p><u1:p></u1:p>', 'Admin', '2012-07-06 16:04:46', 'Admin', '2012-07-19 10:55:34', '1', '0', '1');
INSERT INTO `tbl_content` VALUES ('23', 'help-me-find-a-rose', '12', 'Help Me Find a Rose', '', '<p>Your guide to roses.</p>\r\n<p><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"163\\\" src=\\\"http://www.ua-mktg.com/humming/images/find a rose.JPG\\\" /></p>\r\n<p>&nbsp;</p>', '<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><span style=\\\"color: #993366\\\"><span style=\\\"background-color: #ffffff\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"163\\\" src=\\\"http://www.ua-mktg.com/humming/images/find a rose.JPG\\\" /></span></span></strong></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><span style=\\\"color: #993366\\\"><span style=\\\"background-color: #ffffff\\\">Your Guide to Roses</span></span></strong></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Do you need help to find roses for a gift? There are many interesting fun facts surrounding this popular and beautiful flower. Check out the meanings of the different number and colours of roses to add a special meaning to your sweet lovely rose bouquet.</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">What is a rose?</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">A rose is a rose is a rose. Do you know that roses can &lsquo;speak&rsquo; like humans too? There are occasions when you need to relay your different feelings to the same person but how do you do it? Do it now with roses! Look at the many interesting meanings the rose can hold for someone when you send it in different colours and numbers. Viola! What a good way to channel all your thoughts and feelings through this interesting form of communication. Inject the sparkle and see how the magic works on a love you have had yet to experience. </span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">According to a survey, close to 80% of the girls would love to receive flowers even for no particular reason! Make the magic work today and let these pretty roses &lsquo;speak&rsquo; on your behalf to do justice for your deep sincere love.</span></span></span></p>\r\n<p><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">Roses meaning</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">&ldquo;Why did you buy me 3 stalks of roses and not two? And why red?&rdquo; Do you have the answers to these questions? Have you ever wonder what are the rose meanings for the different numbers and colours given? Avoid the potential pitfall of getting the wrong number and colour of roses for your love especially on big occasions like Valentine&rsquo;s Day! Be well-equipped with the knowledge of the meanings of the different numbers and colours of roses. Not only does it save your day (most likely), it is a source of good fun!<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Do not have the worry of being overwhelmed by what the many different numbers and different colours of roses represent. We can start off with the few common ones and then from there when the momentum picks up, you&rsquo;ll be more interested to know their unique symbolism!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Impress your lover today with these wonderful knowledge! Even if she is not impressed, well it&rsquo;s the thoughts that count.</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">Number of roses</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Red roses commonly given on Valentine&rsquo;s Day are considered the flower of love for the red colour stands for strong romantic feelings. Express the right feeling with these:</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><span style=\\\"background: yellow; mso-highlight: yellow\\\"><o:p></o:p></span></font></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\">\r\n<table class=\\\"MsoTableGrid\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">1 Rose</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Love at first sight, you are the one</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">3 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I love you</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">12 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Be my love</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">36 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I will remember our romantic moments</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 4\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">99 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">I will love you for as long as I live</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 5; mso-yfti-lastrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">108 Roses</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Please marry me!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p class=\\\"MsoListParagraph\\\" style=\\\"margin: 0cm 0cm 10pt 36pt\\\"><span style=\\\"font-family: Verdana\\\"><span lang=\\\"EN-US\\\"><o:p></o:p></span></span></p>\r\n<p><span style=\\\"font-family: Verdana\\\"><span lang=\\\"EN-US\\\" style=\\\"background: yellow; mso-highlight: yellow\\\"><o:p></o:p></span></span></p>\r\n<p>&nbsp;<span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong>Colour</strong></u></span></span></span><span style=\\\"color: #993366\\\"><u><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"> </span></span></span></strong></u></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\">of roses</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"margin: 0cm 0cm 10pt\\\">\r\n<table class=\\\"MsoTableGrid\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Red Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Love, beauty, respect</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Pink Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Appreciation, grace, admiration</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">White Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Purity, innocence, youthfulness</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Yellow Rose</span></span></span></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"319\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 239.4pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Joy, friendship, new beginning</span></span></span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\\\"color: #993366\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><u>&nbsp;99 roses bouquet</u></strong></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><font color=\\\"#000000\\\">Revolve around the romantic language of love with the giving and receiving of flowers. Everything is romantic about the giving of a hand bouquet of flowers because every bouquet contains a secret message of love.<i style=\\\"mso-bidi-font-style: normal\\\"> </i>Convey your true feelings and intentions with passionate selections from Humming Flowers and Gifts Rose Bouquets. Introducing our top favourite; Humming&rsquo;s &rsquo;99 Kisses&rsquo; of 99 super red roses which means &ldquo;I will love you for as long as I live&rdquo;. A certain to delight and make her heart sing out!</font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><font color=\\\"#000000\\\"><img width=\\\"240\\\" height=\\\"240\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/rose.JPG\\\" /></font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>Types of roses</u></strong></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><font color=\\\"#000000\\\">There are more than 15,000 different types of rose species and cultivated varieties worldwide. The most common types of roses are Gallic Rose, Damask Rose, Provence Rose, China Rose, Musk Rose and Hybrid Tea Rose. The rose you get for Valentine&rsquo;s Day is the Hybrid Tea Rose with usually one rose per stem.</font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span lang=\\\"EN-US\\\"><span lang=\\\"EN-US\\\"><font face=\\\"Calibri\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u>Did you know?</u></strong></span></span></font></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\"><span lang=\\\"EN-US\\\">Have you ever wondered what type of roses have you been receiving during Valentine&rsquo;s Day or Mother&rsquo;s day? The history of roses will make you go lo and behold with the rose being one of the oldest flowers in cultivation, dating back 35 million years! Do not belittle the youthful energy of this pretty little flower as it speaks of a sunny deposition with all roses, regardless of type, growing best when they\\\'re in full sun for most of the day. The rose family also includes pears, apples, cherries, plums, peaches, apricots, and almonds. Worldwide, over 50 million roses are given for Valentine\\\'s Day each year! An astonishing number yes we think so too. </span></span></span></span></p>\r\n<p><span lang=\\\"EN-US\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\">Come with us on this journey of the many rose endeavors as we embark on the modern times to reintroduce passion! Let us know what you would like to know more about!</span></span></span><span lang=\\\"EN-US\\\"><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></font></span></span></p>', 'Admin', '2012-07-06 16:12:19', 'Admin', '2012-07-19 14:41:25', '2', '0', '1');
INSERT INTO `tbl_content` VALUES ('24', 'floral-delivery', '12', 'Floral Delivery', '', '<p>Flowers and delivery.</p>\r\n<p><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"153\\\" src=\\\"http://www.ua-mktg.com/humming/images/floral delivery.JPG\\\" /></p>\r\n<p>&nbsp;</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #993366; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-bidi-font-weight: bold\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"153\\\" src=\\\"http://www.ua-mktg.com/humming/images/floral delivery.JPG\\\" /></span></span></span></strong></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #993366; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-bidi-font-weight: bold\\\">Floral delivery (Flowers and delivery)</span></span></span></strong></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Why do we have floral delivery? </span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">There are many good and excitable reasons to have floral and gift deliveries arranged for during special occasions. Think about Birthday, Valentine&rsquo;s Day, Mother&rsquo;s Day, Wedding, Newborn, Grand Openings and more!</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Surprise someone on his or hers birthday, make her day sweeter on Valentine&rsquo;s Day, delight the most deserving Mother on Mother&rsquo;s Day, send your best wishes for the newly-wed, share the joy of a new birth and brighten up a patient&rsquo;s day at the hospital.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flowers express the heart and soul of your mind; allowing your feelings to be conveyed. Not only does it give the recipients a pleasant surprise for the day, the gift is sent to their doorstep for the convenience of everyone else.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"> <span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send flowers and gifts to your family and friends today, even for no particular reason to make their life even more beautiful. And see how the magic works! </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Time-saving</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Apart from all these wonderful reasons, delivery saves time and makes sure that even bulky but practical items reached the recipient nicely packed.</span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts delivery services reach out to customers island-wide with delivery available for both office and residential addresses and at flexible timings arranged to ensure optimal smooth delivery. Call now today to find out the most suitable delivery schedule for your gift recipient; an element of surprise awaits them.&nbsp;<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Beautiful flowers/ Tulips bouquet</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Discover the beauty of freshly bloomed flowers and you&rsquo;ll find them remarkably beautiful and they always smell so good! As said, beauty is in the eyes of the beholder, each type of flowers have each of its own beautiful and unique characteristics to speak about. There are many types of beautiful flowers in this universe and one of them is the tulips.<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Tulips- Perfect love, comfort and romance.</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Introducing a premium breed of flowers - tulip. Tulips signify prefect love, comfort and romance and are valued for their brightly coloured, beautiful cup-shaped petals. Pretty tulips bouquets in pretty vases are available now with Humming Flowers and Gifts in the freshest blooms and gorgeous shades. An ideal gift to express comfort in all the right ways with surprise and grandeur!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">An all-time-favourite: Ferrero bouquet</span><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Birthday, a yearly celebration, is the time of the year when everyone gets well wishes from people around them and making a wish they would like for themselves.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Whether the celebration is a lavish or simple one, what is more important is that one get to spend quality time with your loved ones.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Looking for some interesting fresh ideas for a birthday gift? The unique creation of Humming Flowers and Gifts Ferrero Rocher bouquet; &lsquo;Sweetest Gold&rsquo; is something different with this classy golden bouquet adorned with 32pcs of the classic favourite chocolates. The many other attractive choices of the Birthday range bring to you special gift ideas to make up for your sweetest best wishes. Let the birthday star bask in the birthday joy, have it sent to your loved ones!<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span>&nbsp;</p>\r\n<p><span style=\\\"font-family: Tahoma\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img width=\\\"255\\\" height=\\\"194\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/fd 2(1).jpg\\\" /></span></strong></u></span></span></span></p>\r\n<p><span style=\\\"font-family: Tahoma\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Ideas for Valentine&rsquo;s</span></strong></u></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Did you know? Valentine&rsquo;s Day is one of the biggest holidays for giving flowers. Valentine\\\'s Day is held annually on February 14 celebrating love and affection. Amongst the earliest Valentine\\\'s Day gifts were candies. The most common were chocolates in heart shaped boxes.</span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flowers and gifts for Valentine\\\'s Day</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Ideas for Valentine&rsquo;s Day are many and aplenty. Be it a Valentine&rsquo;s Day romantic candle-lit dinner at a restaurant or a Couple special ride at the Singapore Flyer, the modern aged consumers are increasingly aware of the many choices that are available in the market. And with the celebration comes along the flowers and gifts! Fresh flowers and gifts can be found almost everywhere from the florists in the shopping malls to temporary push cart retailers. The idea of Valentine&rsquo;s Day may seemed to be overly commercialized but why not think of it in a positive manner to celebrate this day of love and make someone&rsquo;s day memorable? </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">To some, Valentine&rsquo;s Day may have the most significant meaning for the couple as the day celebrates the passionate joy of virtues of love they have for one another. And for some, it may be purely for the celebration of simple joy of care and concern we have for one another. Be it what the reason is, Valentine&rsquo;s Day is a day filled with sweet memories and happy moments&hellip; and when one would be able to reminisce the days of happiness back then&hellip;</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\">Beat the crowd on&nbsp;Valentine\\\'s!</span></span></strong></u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></strong><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><span style=\\\"mso-spacerun: yes\\\"> </span></span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Do you do a last minute mad storm to the florists for flowers on Valentine&rsquo;s Day? Beat the crowd with flower deliveries available island-wide with Humming Flowers and Gifts. Now this is a good reason for having deliveries!<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">We can now have a whole new level of fun and excitement to celebrate this special occasion of love and affection with new and creative ranges of Valentine&rsquo;s Day gifts designed. And keep a look out for our innovative ideas during Valentine&rsquo;s Day! </span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Love is in the air&hellip; Spread the joy of this yearly celebration of love.</span></strong></u></span></span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">In Valentine&rsquo;s Day 2012, Humming Flowers &amp; Gifts introduces our First Drive-Thru Collection for Valentine&rsquo;s Day Bouquet&hellip;!&nbsp;Always &hellip;with you in mind at Humming Flowers and Gifts.</span></span></p>\r\n<p><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Gift for men (do not forget the man)</span></strong></u></span></span></span><span style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">And not forgetting for the man of your life&hellip; Show your appreciation for all the love and concern he has showered on you. Gifts for men include classy choices of writing pen executive gift set, smooth red wine and delectable chocolates. With classy gifts that exude charm and masculinity, the gentleman deserves to be pampered too!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:17:26', 'Admin', '2012-07-19 10:54:54', '3', '0', '1');
INSERT INTO `tbl_content` VALUES ('25', 'flower-shops', '12', 'Flower Shops', '', '<p>Flower shops for all occasions.</p>\r\n<p><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"164\\\" src=\\\"http://www.ua-mktg.com/humming/images/online flower store.JPG\\\" />&nbsp;</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"164\\\" src=\\\"http://www.ua-mktg.com/humming/images/online flower store.JPG\\\" /></span></span></span></strong></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"color: #993366\\\"><strong><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flower shops</span></span></span></strong></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Flower shops for all occasions</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The idea of having flower retail shops enables the easy transactions for cash and carry. One can easily find flower shops available in major shopping malls in the city or on the neighbourhood streets. Customers are able to see what&rsquo;s available in store and get to feel and smell the flowers. No doubt of what the benefits of a physical brick-and-mortar store can bring for, have you considered the option of online flower stores? </span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Online flower store</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Online flower stores bring to you endless possibilities of what products you can find in a flowers and gifts retailer, and in a much more convenient and time saving way for the contemporary modern-age consumers!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts provides a wide range of flowers and gifts suitable for many occasions. Just a call away, you can reach us at 6844 2222 to speak to our friendly customer service officers or go to hummings.com today to see what are the ranges of products available for you. Check out the new additions of our Flowers and Gifts Catalogue 2012 with fresh ideas for special occasions like Baby One Month celebration, ROM, Baby&rsquo;s Diaper Cakes and more!</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming Flowers and Gifts welcomes walk-in customers at 7 Tai Seng Drive. However you would have to wait because we make everything fresh! We encourage you to place your order online or over the phone beforehand to lessen your waiting time.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Pretty blooms in store</span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Walk past any flower shops and you can see the myriad of colours surrounding in store. Step into one and be greeted by the wonderful smells of the prettiest blooms! How enchanting and what a great feeling! To bring to you, our valued customers the complete unique gifting experience, Humming Flowers and Gifts is open to the idea of having our first physical store rolled out in our future plans. What do you think? Feel free to give us your comments and thoughts</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">.</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"172\\\" src=\\\"http://www.ua-mktg.com/humming/images/baby.JPG\\\" /></span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Baby&rsquo;s one month</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send your warmest congratulations on the birth of a bundle of joy on the mark of the baby&rsquo;s one month! </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Why do we celebrate a baby&rsquo;s one month old birthday?</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">According to the Chinese customs, when a baby turns one month old, the parents invite their families and friends for a party to celebrate the arrival of a blessing. Family and friends gather to give their blessings and gifts for the baby, celebrating for the baby&rsquo;s good health. Traditional foods present at the party include red eggs and &lsquo;ang ku kueh&rsquo;, in which the colour red symbolizes good luck. Red eggs also signify a new life. Celebrations are usually catered events with buffet spread prepared for guests. Money in red packets is also given out by the guests for the baby, wishing the baby good luck and good health. Just like a Western baby shower, modern day&rsquo;s gifts such as newborn hampers are also given to the baby for a baby&rsquo;s one month celebration.<span style=\\\"mso-spacerun: yes\\\">&nbsp;</span></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming&rsquo;s range of Newborn Hampers brings to you the most compact and delightful products for both Mother and Baby. Find ranges of tonics, baby wear, baby&rsquo;s feeding set and soft plush toys in our high quality Newborn Hampers. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Diaper Cake</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; tab-stops: 82.0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Introducing our all&nbsp;new Diaper Cakes range! This contemporary way of packing the much-requested diapers is bound to be a hit. Humming&rsquo;s Diaper Cakes selection includes beautiful arrangements of flowers, cute plush toys and we even have a Supreme 2-Tier design! These diaper cakes make an ideal choice for baby showers and baby&rsquo;s one month celebrations. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; tab-stops: 82.0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">ROM Bouquet</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Looking for a one-stop solution for your ROM hand bouquet? Celebration Specials: Life&rsquo;s significant milestones are joyously celebrated with family and close friends. Humming brings together a few key elements for the celebration and will deliver it right to your doorstep. Adding the finishing touches to this once in a life time moment by presenting to both bride and groom, here we have for you on this day of joy and unforgettable memories, Humming&rsquo;s Rosy R.O.M Solemnization Ceremony celebration package!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Our Rosy R.O.M Solemnization Ceremony celebration package brings to you the following items with each and every element designed &hellip;with you in mind.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">1.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Bride&rsquo;s Bouquet</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">2.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Bridesmaid Bouquet X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">3.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Groom&rsquo;s Corsage</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">4.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Best Man&rsquo;s Corsage X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">5.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Rosy Floral Posy X2</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">6.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Rosy Centrepiece</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">7.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Eatzi Gourmet Mousse Cake (1kg)</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><i style=\\\"mso-bidi-font-style: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">(Choice of Shapes and Flavours: Mango, Strawberry Chocolate, Strawberry Delight or Chocolate Mint)</span></i></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; text-indent: -18pt; margin: 0cm 0cm 10pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">8.</span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-theme-font: minor-latin\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Personalized Banner</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">A choice of colour theme is available in which you get to choose the rose colours of red, white, pink or champagne!</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Office opening/ Shop opening/ Housewarming</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Whether it is a new office opening, shop opening or a housewarming, a new place marks new beginnings. It is definitely a cause for celebration! Present the most appropriate of choices of gifts for the happy owners with the following category selections from Humming Flowers and Gifts:<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Offer a special toast for the proud new owners with fine selections of fine wines and champagnes with Humming&rsquo;s Vine Wines. These very special Wine Gift baskets arrive in elegant, high quality, collectible baskets. To complement by sweet and savoury snacks, send your sweet thoughts with varying choices from Humming&rsquo;s Gourmet Food Hampers! Our gourmet hampers include choices of Lindt Hampers, Chocolate Hampers and more.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Housewarming gifts celebrate the making of a Home Sweet Home. From a simple message like &ldquo;Congratulations&rdquo; to &ldquo;Welcome to the Neighbourhood&rdquo;, our thoughtfully selected gifts welcome them into their new home with style and taste. Open up your choices to a wide range of household items from Humming&rsquo;s Urban Lifestyle category, practical gifts; there&rsquo;s bound to be something for everyone. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The makes of a joyous celebration are completed with traditional celebration stands! Be spoilt for choices with Humming&rsquo;s Grand Opening ranges of products available, which include Celebration Metal Stands, Congratulation Arch, Auspicious Pedestal Stand, Prosperity range, Celebration Box Stand and Congratulatory Banners. Now you&rsquo;ll be ready to grace the doors of any new establishment and usher in big fortunes!<span style=\\\"mso-spacerun: yes\\\">&nbsp;&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">If you would like to help to add a palette of colours and brilliance to the treasured living space, wait no more to consider beautiful selections from Humming&rsquo;s Table Arrangements.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span>Add a dose of sunshine zest with &lsquo;Blooms of Sunshine Zest&rsquo;, a cheerful arrangement of gerberas and sunflowers in glass vase. With this simple sunflowers table arrangement to liven up the new office, shop or home, you will have them reflecting and meditating on your thoughtfulness.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img width=\\\"185\\\" height=\\\"186\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/condolence.JPG\\\" /></span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Condolences products: Coffin Top</span></u></strong></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming flowers and gifts provide you with condolences products, seeking to fulfill your needs and preferences in any way to make the process of ordering condolences items easier. Let Humming lessen the haste and reduce the intensity of melancholy for you.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming&rsquo;s Coffin Top Sprays are designed to dress up the coffin, the classy designs of our coffin tops also help to soften the atmosphere and lift the somber mood. Let Humming be here for you to convey your deepest condolences to the bereaved family; Humming is like a close friend who never leave your side.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:28:54', 'Admin', '2012-07-19 11:08:51', '4', '0', '1');
INSERT INTO `tbl_content` VALUES ('26', 'birthday-gift-ideas', '12', 'Birthday Gift Ideas', '', '<p>Everything you need to know about birthdays.</p>\r\n<p><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"154\\\" src=\\\"http://www.ua-mktg.com/humming/images/birthday.JPG\\\" />&nbsp;</p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"154\\\" src=\\\"http://www.ua-mktg.com/humming/images/birthday.JPG\\\" /></span></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday gift ideas </span></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><strong><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Everything you need to know about birthdays.</span></u></strong></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">The revolution of today&rsquo;s birthday gift ideas has come to incorporate many modern gifting elements. However to have some basic understanding of the cultures and traditions of what the various occasions call for is also vital. Buying a birthday gift is generally categorized into which gender you are getting the gift for and it can also be for a baby&rsquo;s one month celebration. </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-ansi-language: EN-US\\\">The practice of cake-cutting on birthdays is a widely popular social practice. Candles are placed on birthday cakes and candles must be blown out in one breath so that the wish will come true and the person will enjoy good luck in the coming year. Some also believe that for good luck, the name of the person on the cake must be smeared out before slicing. </span></span></span><font size=\\\"3\\\"><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 9pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday cards, birthday bears and birthday cakes are easily available at many gift stores but how about exclusive birthday gift sets accompanied by pretty fresh flowers?<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Meet your gifting needs through gift specialist Humming Flowers and Gifts where we offer you a wide range of contemporary selections for birthdays. Humming&rsquo;s Birthday category speaks of styles varying from birthday for newborns, birthday for ladies and birthday for men. </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday banners</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">A baby&rsquo;s one month birthday celebration sees the gathering of proud family and friends to celebrate the arrival of a new blessing; the newest addition for the family. Make sure the party is appropriately adorned with the grandest key elements to grace the joy of the special day for both Mother and Baby. Now, inject something traditional with a touch of contemporary with birthday banners! </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">For a baby&rsquo;s 1<sup>st</sup> Month Celebration, Humming is the perfect accompaniment to day by bringing a personalized keepsake banner, 3 sweet flora posy, a cake and wonderful heart-shaped helium balloons!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Give your child the party he&rsquo;ll never forget.</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday month flowers</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Take a look at your birthday month flowers!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p>\r\n<table class=\\\"MsoNormalTable\\\" border=\\\"1\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" style=\\\"border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt\\\">\r\n    <tbody>\r\n        <tr style=\\\"mso-yfti-irow: 0; mso-yfti-firstrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Month</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Flower</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><b style=\\\"mso-bidi-font-weight: normal\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">General Meaning</span></b></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 1\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">January</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Carnation</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Love/ Beauty/ Fascination</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 2\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">February</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Violet</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Faith/ Wisdom/ Hope</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 3\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">March</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Daffodil</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Respect/ Unrequited Love</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 4\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">April</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Daisy</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Youth/ Innocence/ Modesty</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 5\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">May</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Lily of the Valley</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Humility/ Chastity/ Sweetness</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 6\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">June</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Rose</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Love/ Passion</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 7\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">July</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Water Lily</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Lightness/ Levity</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 8\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">August</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Poppy</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Remembrance</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 9\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">September</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Aster</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Love/ Faith/ Wisdom</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 10\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">October</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Marigold</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">&lsquo;Winning Grace&rsquo;</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 11\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">November</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Chrysanthemum</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Compassion/ Friendship/ Secret Love</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\\\"mso-yfti-irow: 12; mso-yfti-lastrow: yes\\\">\r\n            <td valign=\\\"top\\\" width=\\\"181\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 135.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">December</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"204\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 153pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Narcissus</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n            <td valign=\\\"top\\\" width=\\\"253\\\" style=\\\"border-bottom: windowtext 1pt solid; border-left: #f0f0f0; padding-bottom: 0cm; background-color: transparent; padding-left: 5.4pt; width: 189.9pt; padding-right: 5.4pt; border-top: #f0f0f0; border-right: windowtext 1pt solid; padding-top: 0cm; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt\\\">\r\n            <p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Sweetness/ Dynamic</span></span></span><font face=\\\"Calibri\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'\\\"><o:p></o:p></span></font></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Happy Sunflowers&nbsp;&nbsp;</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Sunflowers, as the name suggests, are flowers which adore the sun (they like to face the sun) and represent the exuberant life of all flowers. Its radiant warmth, great vibrant and warming glow all make up for a happy deposition, the happiest flowers of all! </span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Did you know? Sunflowers are one of the fastest growing flowers in the world, growing up to 30.5 centimeters in a day!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Sunflowers known for its symbol of adoration and longevity, are most joyous to receive and give during special occasions. Look out for these bright and cheery gifts at Humming&hellip;</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">At Humming, selections of fresh sunflowers are available in pretty hand bouquets and for birthday gift sets. Explore the idea of sending sunflowers to brighten up someone&rsquo;s day and also to bring good luck and happiness for the recipient! We have here for you, sunflower bouquets to add instant sunshine to anyone&rsquo;s day with spectacular beauty of these fresh flowers. And for birthday choices, we have our cuddly cute friends (soft toys) packed together with the sweetest thoughts (chocolates),&nbsp;altogether with&nbsp;the brightest happiest sunflowers!</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\">&nbsp;</p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\">&nbsp;</p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"><img width=\\\"260\\\" height=\\\"248\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/birthday balloons.JPG\\\" /></span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday Balloon</span></strong></u></span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">What is a birthday party without birthday balloons? Balloons come in all fun shapes and colours setting the right mood and lighten the atmosphere for the perfect celebration day! Set the right mood for the party today with these fun balloons today!</span><span lang=\\\"EN-US\\\" style=\\\"color: red; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"> </span><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Would not it be nice to have a birthday gift sent accompanied by pretty birthday balloons?</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Find these eye candies in Humming&rsquo;s Simply Love and Baby 1st Month celebration ranges. The helium balloons come in heart shaped and in pretty shades of purple, red and pink! Now won&rsquo;t these birthday balloons make the birthday girl feel more precious than ever on her special day?</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-GB\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-GB; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Birthday Surprise</span></strong></u></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-GB; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"><font face=\\\"Calibri\\\"><o:p></o:p></font></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">Happening only once a year, birthdays are so precious and special!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">What&rsquo;s a birthday without a surprise? Shower the birthday star with all the love and attention they deserve on this special day of theirs. Deliver a gift of surprise and delight with the help of Humming Flowers.</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">From lovely hand flower bouquets, cake gift sets, cuddly soft toys, fragrances, birthday balloons and even birthday for the gentlemen, these fresh selections for you to choose from will never let you run out of birthday gift ideas from now on!</span></span></span><font face=\\\"Calibri\\\"><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></font></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\">With you in mind, Humming paid the extra attention to pick the most suitable gifts and the prettiest blooms to put together these exquisite birthday gift sets for him, her and the young at heart!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;<span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: Calibri\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"163\\\" src=\\\"http://www.ua-mktg.com/humming/images/birthday party.JPG\\\" /></span></strong></u></span></span></span></p>', 'Admin', '2012-07-06 16:32:51', 'Admin', '2012-07-19 14:54:08', '5', '0', '1');
INSERT INTO `tbl_content` VALUES ('27', 'far-east', '12', 'Far East', '', '<p>Far east region &amp; major festive seasons!</p>\r\n<p><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"168\\\" src=\\\"http://www.ua-mktg.com/humming/images/sunflower.JPG\\\" /></p>', '<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"168\\\" src=\\\"http://www.ua-mktg.com/humming/images/sunflower.JPG\\\" /></span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Far East</span></strong></u></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With delivery available island-wide at Humming Flowers and Gifts, we make sure that fresh flowers and the pretty gifts reach to your recipients even in the far eastern part of Singapore.&nbsp;Even during festive season on Christmas, spread the joy of love to your loved ones no matter where they are.<span style=\\\"mso-spacerun: yes\\\">&nbsp; </span></span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">All-thing Christmas!</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Jingle bells, jingle bells! Merry Christmas and a Happy New Year! The festive season of giving and sharing is here again. At the happiest time of the year, celebrations and parties are all over in town, it&rsquo;s the time for all your family and friends to come together with well wishes for each other and&hellip; the galore of Christmas gifts under the tree!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With a wide array of gift choices to choose from for Christmas, you are definitely spoilt for choices for your Christmas gifting selections. </span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">With our exclusive designs created with you in mind, seek to differentiate from the rest! Now you can look for what you really want with Humming Flowers &amp; Gifts&nbsp;in our ranges of Christmas hampers, gift boxes, traditional gift baskets and other Christmas gourmet.</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"158\\\" src=\\\"http://www.ua-mktg.com/humming/images/cny.JPG\\\" /></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Lunar Chinese New Year</span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Another major festive season to call for gifts and hampers delivery is the Lunar Chinese New Year. </span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The Chinese celebrates the Lunar New Year (also known as the &lsquo;Spring Festival&rsquo;) every year according to the Lunar Chinese Calendar. The celebration lasts for 15 days and on Chinese New Year&rsquo;s Eve, family will gather for a reunion dinner, usually over a steamboat dinner. During Chinese New Year, the young pays respect to the elders, wishing them a prosperous New Year ahead. Families go house-visiting together and the married adults will give out red packets(Hongbao) to kids and single adults for good luck and blessings. Gong Xi Fa Cai!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Humming brings to you our yearly Lunar New Year Gifts Collection! In our collection, we have a wide selection of Evergreen Hampers, abalone gift baskets, oranges baskets, and auspicious plants and blooms. Our lucky creations will bring to you new heights of greater success and excellence!</span></span></span><span lang=\\\"EN-GB\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-GB\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Be sure to place your Chinese New Year orders in advanced. Humming Flowers and Gifts delivery team will reach to your recipients in every&nbsp;part of Singapore.</span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"160\\\" src=\\\"http://www.ua-mktg.com/humming/images/xmas.JPG\\\" /></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><strong><span style=\\\"color: #993366\\\"><u><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Christmas Present</span></u></span></strong></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The wonderful holiday season arrives at year-end and when family and friends get together for a nice meal and exchange Christmas presents! Tis&rsquo; the season to be jolly, join us in spreading the joy of gift giving with wonderful selections of Christmas hampers, brilliant gift boxes and traditional gift baskets which all come with decadent selection of fine wines, quality chocolates and more! And also, don&rsquo;t forgetting the gourmet selection of traditional Christmas delights including Christmas log cakes, Christmas Turkey and delightful Christmas Cupcakes! Humming has all the Christmas presents packaged together with the freshest and sweetest blooms for the most comprehensive gifts ever. </span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\">&nbsp;</span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">The idea of holiday merry making is now further enticed with Humming&rsquo;s Christmas Gifts Collection.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 0pt 36pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">&nbsp;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas Delivery</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Are you having the dreadful thought of having to beat the crowd and join in the long line of queue at the cashier counter for your last minute Christmas shopping? Skip the trouble and opt for Christmas delivery with Humming Flowers and Gifts.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">For the individual who has busy tight schedules, get your Christmas shopping done fuss free with Humming. Have the gifts delivered right to your recipient&rsquo;s doorstep with just a few clicks on the website through online purchase. Placing your orders online, now this speaks of holiday style indeed.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Personalized Christmas Basket</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas presents convey the most sincere best wishes from the sender to the recipient. However if you feel that you want to lend a personal touch for the recipient of the present you give to, there&rsquo;s always the choice of personalized Christmas baskets and gift boxes!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Nothing is more meaningful than the idea of adding a personal touch of your thoughtful wishes to the Christmas presents for your family and friends. Humming knows how to make every gift special just for you&hellip;</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Presenting our Personalized Gift Boxes in our Christmas Gifts Collection 2011, we have a revolutionary idea of having a personalized greeting card skillfully attached to the bow and box. Imagine the smile of surprise and delight when you receive these gift boxes addressed to your name! Now this will definitely accord your gift as one of the most memorable Christmas gift.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><img alt=\\\"\\\" width=\\\"260\\\" height=\\\"158\\\" src=\\\"http://www.ua-mktg.com/humming/images/xmas 2.JPG\\\" /></span></strong></u></span></span></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span style=\\\"color: #993366\\\"><u><strong><span lang=\\\"EN-US\\\" style=\\\"mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\">Noel Gifts/ Noel Hampers</span></strong></u></span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: Calibri; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Christmas, also known as Noel, is a holiday celebrated by Christians on the 25<sup>th</sup> December every year. Christmas is also an event widely celebrated by non-Christians too.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">During Christmas, family and friends get together to have a good meal, exchange Chirstmas presents, say their thanks and sing Christmas carols. It is the season of love, joy and many happy returns!</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p class=\\\"MsoNormal\\\" style=\\\"line-height: normal; margin: 0cm 0cm 10pt; background: white\\\"><span style=\\\"font-size: larger\\\"><span style=\\\"font-family: Tahoma\\\"><span lang=\\\"EN-US\\\" style=\\\"color: #666666; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\">Send Christmas gifts and hampers to your family, friends and business associates. What&nbsp;Christmas gifts are you intending to give today? Count on Humming Flowers and Gifts for exquisite ideas for your Christmas gifts and hampers choice. In our Christmas Gifts Collection 2011, we came up with new and innovative gift ideas such as the Personalized Gift Boxes; in which every gift box has a personalized greeting card addressed to the recipient&rsquo;s name. Also, we have the all new Picnic Fruit and Nut; a refreshing healthy alternative of fresh fruits and quality nuts! On top of all these, Humming will not forget the all-time favourite Christmas Evergreen Hampers and Traditional Gift Baskets.</span></span></span><span lang=\\\"EN-US\\\" style=\\\"font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: #666666; font-size: 12pt; mso-fareast-font-family: \\\'Times New Roman\\\'; mso-ansi-language: EN-US\\\"><o:p></o:p></span></p>\r\n<p>&nbsp;</p>', 'Admin', '2012-07-06 16:39:40', 'Admin', '2012-07-26 09:57:44', '6', '0', '1');
INSERT INTO `tbl_content` VALUES ('29', '', '1', 'Online Specials', '', '<p>Exclusive Online Specials</p>', '<p><img width=\\\"644\\\" height=\\\"300\\\" alt=\\\"\\\" src=\\\"http://www.ua-mktg.com/humming/images/Online Specials.JPG\\\" /></p>', 'Admin', '2012-07-25 17:08:42', '', '0000-00-00 00:00:00', '0', '0', '1');

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
  `use` int(1) NOT NULL,
  `min_purchase` int(11) NOT NULL,
  `free_delivery` int(1) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`),
  UNIQUE KEY `coupon_code` USING BTREE (`coupon_code`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_coupon
-- ----------------------------
INSERT INTO `tbl_coupon` VALUES ('14', 'ibrhcx8nu0', '15.00', '2', '0', '2012-06-06', '0000-00-00', '0', '0.00', '201,293,220,251,252,253,254,221,222,256,257,255,223,224,225,226,227,228,231,258,259,260,261,262,263,265,232,233,234,235,236,284,285,286,287,288,289,290,291,237,281,282,202,208,243,238,244,239,245,240,246,241,247,242,207,215,216,217,219,248,250,292', '', '2012-07-16', '1', '2', '0', '0', '0');
INSERT INTO `tbl_coupon` VALUES ('15', 'ar7oautsdg', '10.00', '1', '0', '2012-06-06', '0000-00-00', '0', '0.00', '', '', '0000-00-00', '1', '0', '0', '0', '1');
INSERT INTO `tbl_coupon` VALUES ('16', 'zedem23zc4', '20.00', '1', '0', '2012-06-08', '0000-00-00', '0', '0.00', '201,220,251,252,253,254,221,222,256,257,255,223,224,225,226,227,228,231,258,259,260,261,262,263,265,232,233,234,235,236,284,285,286,287,288,289,290,291,237,281,282,202,208,243,238,244,239,245,240,246,241,247,242,207,215,283,219,248,250,292', '', '2012-07-16', '1', '2', '1', '0', '0');
INSERT INTO `tbl_coupon` VALUES ('19', 'HFG50%', '50.00', '1', '0', '2012-07-23', '0000-00-00', '0', '0.00', '', '300', '0000-00-00', '1', '0', '1', '100', '0');

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
  `code` varchar(2) NOT NULL,
  PRIMARY KEY  (`delivery_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_delivery_status
-- ----------------------------
INSERT INTO `tbl_delivery_status` VALUES ('2', 'Problem', 'P');
INSERT INTO `tbl_delivery_status` VALUES ('3', 'Not in time (or) Office Closed', 'T');
INSERT INTO `tbl_delivery_status` VALUES ('4', 'Cancel Order', '5');
INSERT INTO `tbl_delivery_status` VALUES ('5', 'Successful', '4');
INSERT INTO `tbl_delivery_status` VALUES ('6', 'Still in Office ', 'O');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_message
-- ----------------------------
INSERT INTO `tbl_message` VALUES ('1', '0', 'New Born', '', '', '', '', '', '50');
INSERT INTO `tbl_message` VALUES ('2', '1', 'Congratulations & Best Wishes On The', 'Arrival Of Your Wonderful Newborn Twin ', 'Girl', '', '', '', '3');
INSERT INTO `tbl_message` VALUES ('3', '1', 'It&#39;s a boy! Wishing skies of blue for ', 'you...and your new little ray of ', 'sunshine. Congratulations! ', 'bb&#39;', '', '', '50');
INSERT INTO `tbl_message` VALUES ('4', '1', 'A New Little Boy to Brighten Your World!', 'He couldn&#39;t have happened to a nicer', 'family! ', 'Congratulations to Everyone! ', '', '', '1');
INSERT INTO `tbl_message` VALUES ('5', '1', 'Congratulations on the arrival of your', 'newborn baby boy', '', '', '', '', '2');
INSERT INTO `tbl_message` VALUES ('6', '0', 'Wedding', '', '', '', '', '', '50');
INSERT INTO `tbl_message` VALUES ('7', '6', 'æ­å–œ', '', '', '', '', '', '50');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_newsletter_user
-- ----------------------------
INSERT INTO `tbl_newsletter_user` VALUES ('3', 'test', 'nam@nam.com', '');
INSERT INTO `tbl_newsletter_user` VALUES ('4', 'lee', 'lee@dweb.com.sg', '1344593391');
INSERT INTO `tbl_newsletter_user` VALUES ('6', 'Ming Liang', 'mingliang@ua-consultants.com', '');

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
  `sold_to_party_no` varchar(7) NOT NULL,
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
  `order_time` time NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('165', '2012-07-18', 'ZI01', '4101000061', '2000', '13', '01', 'Z002', '30', '0007000', 'Ms', 'Cheryl Quek ', '', '', '', '4444', '', '', '', '4444', '', 'SG', '44747', '', '02', 'CC', '0', '1', '2147483647', 'Cheryl Quek ', '0', '44747', '', 'ssss@rddd.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700165', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('167', '2012-07-18', 'ZI01', '4101000063', '2000', '13', '01', 'Z002', '33', '0007000', 'Mr', 'murugan ', 'blk 50', '#02-03', 'noel building', 'tai seng drive 3', '', '', '', '535218', '', 'SG', '97203694', '64103023', '01', 'CC', '0', '1', '2147483647', 'murugan ', '0', '97203694', '64103023', 'bala@noel.com.sg', 'I', '', 'IM6', 'F12', '', 'IM6', '700167', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('170', '2012-07-18', 'ZI01', '4101000070', '2000', '13', '01', 'Z002', '34', '0007000', 'Mr', 'vinoth ', 'Blk 227', '#10-399', '', 'petir road', '', '', '', '670217', '', 'SG', '81193544', '', '01', 'CC', '0', '1', '2147483647', 'vinoth ', '0', '81193544', '', 'vino@noel.com.sg', 'I', '', 'IM6', 'F12', '', 'IM6', '700170', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('171', '2012-07-18', 'ZI01', '4101000071', '2000', '13', '01', 'Z002', '35', '0007000', 'Mr', 'donkey ', 'blk 293', '#01-11', 'snake bulding', 'goat street', '', '', '', '012122', 'vellore', 'SG', '8992923', '2399399', '01', 'CC', '0', '1', '2147483647', 'donkey ', '0', '8992923', '2399399', 'dbala2004@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700171', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('172', '2012-07-18', 'ZI01', '4101000072', '2000', '13', '01', 'Z002', '36', '0007000', 'Mr', 'kumar ', 'blk 543', '987', 'pending', 'pending', '', '', '', '6754909', '', 'SG', '23454765', '34668769', '01', 'CC', '0', '1', '2147483647', 'kumar ', '0', '23454765', '34668769', 'vinoth_167@yahoo.co.in', 'I', '', 'IM6', 'F12', '', 'IM6', '700172', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('173', '2012-07-18', 'ZI01', '4101000073', '2000', '13', '01', 'Z002', '37', '0007000', 'Mr', 'akill ', '234', '3433-232', 'tei seigh', 'north srt', '', '', '', '2342323', '', 'SG', '32568987', '56475868', '01', 'CC', '0', '1', '2147483647', 'akill ', '0', '32568987', '56475868', 'madhuakill@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700173', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('174', '2012-07-18', 'ZI01', '4101000074', '2000', '13', '01', 'Z002', '38', '0007000', 'Mr', 'kumar ', 'blk23', '213-233', 'road side', 'red', '', '', '', '235454', '', 'SG', '32453253', '32543655', '01', 'CC', '0', '1', '2147483647', 'kumar ', '0', '32453253', '32543655', 'satheesh.manoharan@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700174', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('175', '2012-07-18', 'ZI01', '4101000075', '2000', '13', '01', 'Z002', '39', '0007000', 'Mr', 'durai ', 'blk 12', '12-23', 'kum', 'gun', '', '', '', '232143', '', 'SG', '324324', '343254', '01', 'CC', '0', '1', '2147483647', 'durai ', '0', '324324', '343254', 'samvarun@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700175', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '00:00:00');
INSERT INTO `tbl_order` VALUES ('176', '2012-07-19', 'ZI01', '4101000076', '2000', '13', '01', 'Z002', '40', '0007000', 'Mr', 'harish ', 'blk 23', '23-23', 'chennai', 'velachery', '', '', '', '7656465', 'SG', 'SG', '234454', '543564', '01', 'CC', '0', '1', '2147483647', 'harish ', '0', '234454', '543564', 'harish.vfx89@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700176', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '11:08:55');
INSERT INTO `tbl_order` VALUES ('177', '2012-07-19', 'ZI01', '4101000078', '2000', '13', '01', 'Z002', '40', '0007000', 'Mr', 'harish ', 'blk 23', '23-23', 'chennai', 'velachery', '', '', '', '7656465', 'SG', 'SG', '234454', '543564', '01', 'CC', '0', '1', '2147483647', 'harish ', '0', '234454', '543564', 'harish.vfx89@gmail.com', 'I', '', 'IM6', 'F12', '', 'IM6', '700177', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '12:01:27');
INSERT INTO `tbl_order` VALUES ('178', '2012-07-19', 'ZI01', '4101000079', '2000', '13', '01', 'Z002', '41', '0007000', 'Mr', 'Rajesh ', 'blk 12', '837', 'bill', 'bound', '', '', '', '5765343', 'sg', 'SG', '23423423', '45435443', '01', 'CC', '0', '1', '2147483647', 'Rajesh ', '0', '23423423', '45435443', 'rajesh.kumar@gmail.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700178', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '15:18:26');
INSERT INTO `tbl_order` VALUES ('179', '2012-07-19', 'ZI01', '4101000080', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '600219', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700179', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '16:54:35');
INSERT INTO `tbl_order` VALUES ('180', '2012-07-19', 'ZI01', '4101000090', '2000', '13', '01', 'Z002', '42', '0007000', 'Mr', 'pravin ', 'blk 211', '12', 'tamil', 'nadu', '', '', '', '987978', 'gu', 'SG', '23534343', '45345356', '01', 'CC', '0', '1', '2147483647', 'pravin ', '0', '23534343', '45345356', 'pravin.kumar@gmail.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700180', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '22:00:39');
INSERT INTO `tbl_order` VALUES ('181', '2012-07-20', 'ZI01', '4101000091', '2000', '13', '01', 'Z002', '43', '0007000', 'Mr', 'Goh ', '29', '', '', 'Belmond Road 1/12', '', '', '', '1623155', 'SG', 'SG', '6511112222', '', '02', 'CC', '0', '1', '2147483647', 'Goh ', '0', '6511112222', '', 'tomy@tomy.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700181', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '14:26:43');
INSERT INTO `tbl_order` VALUES ('182', '2012-07-20', 'ZI01', '4101000092', '2000', '13', '01', 'Z002', '45', '0007000', 'Mr', 'vivian ', 'blk 12', '23', 'grand', 'palace', '', '', '', '23432', 'sg', 'SG', '324242', '342342', '01', 'CC', '0', '1', '2147483647', 'vivian ', '0', '324242', '342342', 'vinoth11@gmail.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700182', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '17:53:35');
INSERT INTO `tbl_order` VALUES ('183', '2012-07-20', 'ZI01', '4101000094', '2000', '13', '01', 'Z002', '44', '0007000', 'Ms', 'Su Yee Hong ', '54', '#05-11', 'Peoples&#39; Park', 'China Town&#39;s Road', '', '', '', '123123', 'China Town', 'SG', '88881234', '', '01', 'CC', '0', '1', '2147483647', 'Su Yee Hong ', '0', '88881234', '', 'test3@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700183', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:06:44');
INSERT INTO `tbl_order` VALUES ('184', '2012-07-20', 'ZI01', '4101000095', '2000', '13', '01', 'Z002', '46', '0007000', 'Mr', 'æ˜¾é¾™ ', '219', '#05-05', '', 'Orchard St22', '', '', '', '111234', 'SG', 'SG', '88888888', '', '02', 'CC', '0', '1', '2147483647', 'æ˜¾é¾™ ', '0', '88888888', '', 'test4@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700184', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:24:10');
INSERT INTO `tbl_order` VALUES ('185', '2012-07-20', 'ZI01', '4101000096', '2000', '13', '01', 'Z002', '45', '0007000', 'Mr', 'vivian ', 'blk 12', '23', 'small', 'exchange', '', '', '', '23432', 'sg', 'SG', '354245', '342342', '01', 'CC', '0', '1', '2147483647', 'vivian ', '0', '354245', '342342', 'vinoth11@gmail.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700185', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:27:53');
INSERT INTO `tbl_order` VALUES ('186', '2012-07-20', 'ZI01', '4101000097', '2000', '13', '01', 'Z002', '47', '0007000', 'Mr', 'Obama ', '123', '#10-10', '', 'US Street', '', '', '', '100001', 'SG', 'SG', '12123333', '', '02', 'CC', '0', '1', '2147483647', 'Obama ', '0', '12123333', '', 'test5@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700186', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:29:10');
INSERT INTO `tbl_order` VALUES ('187', '2012-07-20', 'ZI01', '4101000098', '2000', '13', '01', 'Z002', '47', '0007000', 'Mr', 'Obama ', '123', '#10-10', '', 'US Street', '', '', '', '100001', 'SG', 'SG', '12123333', '', '02', 'CC', '0', '1', '2147483647', 'Obama ', '0', '12123333', '', 'test5@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700187', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:30:55');
INSERT INTO `tbl_order` VALUES ('188', '2012-07-20', 'ZI01', '4101000100', '2000', '13', '01', 'Z002', '48', '0007000', 'Mr', 'Bento ', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '', '123456', 'SG', 'SG', '10101010', '', '02', 'CC', '0', '1', '2147483647', 'Bento ', '0', '10101010', '', 'test6@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700188', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:36:38');
INSERT INTO `tbl_order` VALUES ('189', '2012-07-21', 'ZI01', '4101000101', '2000', '13', '01', 'Z002', '49', '0007000', 'Mrs', 'Akhil ', 'blk 12', '12', 'akhila', 'akh', '', '', '', '86785', 'sg', 'SG', '2343234', '4235234', '01', 'CC', '0', '1', '2147483647', 'Akhil ', '0', '2343234', '4235234', 'akhila@gmail.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700189', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '21:59:40');
INSERT INTO `tbl_order` VALUES ('190', '2012-07-23', 'ZI01', '4101000102', '2000', '13', '01', 'Z002', '50', '0007000', ' ', 'uytut ', '', '', '', '454544', '', '', '', 'juuii', '', 'SG', '4754545', '', '02', 'CC', '0', '1', '2147483647', 'uytut ', '0', '4754545', '', 're@sss.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700190', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '15:36:18');
INSERT INTO `tbl_order` VALUES ('191', '2012-07-23', 'ZI01', '4101000105', '2000', '13', '01', 'Z002', '44', '0007000', 'Ms', 'Su Yee Hong ', '54', '#05-11', 'Peoples&#39; Park', 'China Town&#39;s Road', '', '', '', '123123', 'China Town', 'SG', '88881234', '', '01', 'CC', '0', '1', '2147483647', 'Su Yee Hong ', '0', '88881234', '', 'test3@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700191', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '16:27:00');
INSERT INTO `tbl_order` VALUES ('192', '2012-07-23', 'ZI01', '4101000107', '2000', '13', '01', 'Z002', '46', '0007000', 'Mr', 'æ˜¾é¾™ ', '219', '#05-05', '', 'Orchard St22', '', '', '', '111234', 'SG', 'SG', '88888888', '', '02', 'CC', '0', '1', '2147483647', 'æ˜¾é¾™ ', '0', '88888888', '', 'test4@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700192', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '17:14:29');
INSERT INTO `tbl_order` VALUES ('193', '2012-07-23', 'ZI01', '4101000110', '2000', '13', '01', 'Z002', '48', '0007000', 'Mr', 'Bento ', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '', '123456', 'SG', 'SG', '10101010', '', '02', 'CC', '0', '1', '2147483647', 'Bento ', '0', '10101010', '', 'test6@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700193', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '17:32:00');
INSERT INTO `tbl_order` VALUES ('194', '2012-07-23', 'ZI01', '4101000114', '2000', '13', '01', 'Z002', '47', '0007000', 'Mr', 'Obama ', '123', '#10-10', '', 'US Street', '', '', '', '100001', 'SG', 'SG', '12123333', '', '02', 'CC', '0', '1', '2147483647', 'Obama ', '0', '12123333', '', 'test5@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700194', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:03:52');
INSERT INTO `tbl_order` VALUES ('195', '2012-07-23', 'ZI01', '4101000118', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '600219', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700195', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:10:11');
INSERT INTO `tbl_order` VALUES ('196', '2012-07-26', 'ZI01', '4101000119', '2000', '13', '01', 'Z002', '51', '0007000', 'Ms', 'dsda ', '', '', '', 'gfgfg', '', '', '', 'hjjgjghj', '', 'SG', '424242', '', '02', 'CC', '0', '1', '2147483647', 'dsda ', '0', '424242', '', 'dsda@dda.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700196', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '13:18:55');
INSERT INTO `tbl_order` VALUES ('201', '2012-07-26', 'ZI01', '4101000123', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '100001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700201', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '16:49:55');
INSERT INTO `tbl_order` VALUES ('203', '2012-07-27', 'ZI01', '4101000125', '2000', '13', '01', 'Z002', '46', '0007000', 'Mr', 'æ˜¾é¾™ ', '219', '#05-05', '', 'Orchard St22', '', '', '', '111234', 'SG', 'SG', '88888888', '', '02', 'CC', '0', '1', '2147483647', 'æ˜¾é¾™ ', '0', '88888888', '', 'test4@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700203', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '12:38:08');
INSERT INTO `tbl_order` VALUES ('206', '2012-07-27', 'ZI01', '4101000131', '2000', '13', '01', 'Z002', '48', '0007000', 'Mr', 'Bento ', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '', '123456', 'SG', 'SG', '10101010', '', '02', 'CC', '0', '1', '2147483647', 'Bento ', '0', '10101010', '', 'test6@test.test', 'I', '', 'IM6', 'F13', '', 'IM6', '700206', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '13:07:59');
INSERT INTO `tbl_order` VALUES ('207', '2012-08-07', 'ZI01', '4101000137', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '1', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700207', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '14:17:34');
INSERT INTO `tbl_order` VALUES ('208', '2012-08-07', 'ZI01', '4101000138', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '1', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700208', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '14:17:58');
INSERT INTO `tbl_order` VALUES ('209', '2012-08-09', 'ZI01', '4101000139', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '2', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700209', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '23:24:32');
INSERT INTO `tbl_order` VALUES ('210', '2012-08-10', 'ZI01', '4101000140', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700210', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '10:47:22');
INSERT INTO `tbl_order` VALUES ('211', '2012-08-10', 'ZI01', '4101000141', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700211', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '10:52:32');
INSERT INTO `tbl_order` VALUES ('212', '2012-08-10', 'ZI01', '4101000142', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '3', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700212', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '10:59:20');
INSERT INTO `tbl_order` VALUES ('213', '2012-08-10', 'ZI01', '4101000143', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '4', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700213', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '11:05:14');
INSERT INTO `tbl_order` VALUES ('214', '2012-08-10', 'ZI01', '4101000144', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '5', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700214', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '11:06:39');
INSERT INTO `tbl_order` VALUES ('215', '2012-08-10', 'ZI01', '4101000145', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700215', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '14:21:36');
INSERT INTO `tbl_order` VALUES ('216', '2012-08-10', 'ZI01', '4101000146', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700216', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '14:38:49');
INSERT INTO `tbl_order` VALUES ('217', '2012-08-10', 'ZI01', '4101000147', '2000', '13', '01', 'Z002', '71', '0007000', 'Mr', 'test ', '', '', '', 'test', '', '', '', '70000', '', 'SG', '000888888888', '', '02', 'CC', '0', '1', '2147483647', 'test ', '0', '000888888888', '', 'namhcm2001@yahoo.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700217', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '15:20:22');
INSERT INTO `tbl_order` VALUES ('218', '2012-08-10', 'ZI01', '4101000148', '2000', '13', '01', 'Z002', '70', '0007000', ' ', 'test ', '', '', '', 'test', '', '', '', '70000', '', 'SG', '000888888888', '', '01', 'CC', '0', '1', '2147483647', 'test ', '0', '000888888888', '', 'namcohcm@yahoo.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700218', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '18:19:28');
INSERT INTO `tbl_order` VALUES ('219', '2012-08-11', 'ZI01', '4101000149', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700219', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '20:25:10');
INSERT INTO `tbl_order` VALUES ('220', '2012-08-11', 'ZI02', '4101000150', '2000', '13', '02', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700220', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '20:25:10');
INSERT INTO `tbl_order` VALUES ('221', '2012-08-12', 'ZI01', '4101000151', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700221', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '01:19:15');
INSERT INTO `tbl_order` VALUES ('222', '2012-08-14', 'ZI01', '4101000152', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700222', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '11:14:16');
INSERT INTO `tbl_order` VALUES ('223', '2012-08-14', 'ZI01', '4101000153', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700223', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '13:04:16');
INSERT INTO `tbl_order` VALUES ('224', '2012-08-14', 'ZI01', '4101000154', '2000', '13', '01', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '0', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700224', '0', '0', '0', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '13:09:18');
INSERT INTO `tbl_order` VALUES ('225', '2012-08-14', 'ZI02', '4101000155', '2000', '13', '02', 'Z002', '2', '0007000', 'Mr', 'Ming Liang ', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'SG', '65096938443', '', '01', 'CC', '6', '1', '2147483647', 'Ming Liang ', '0', '65096938443', '', 'mingliang@ua-consultants.com', 'I', '', 'IM6', 'F13', '', 'IM6', '700225', '0', '0', '2', '0', '0', 'ZEV', '0', 'UNSP', '', '0', '13:16:53');

-- ----------------------------
-- Table structure for `tbl_order_addon`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_addon`;
CREATE TABLE `tbl_order_addon` (
  `order_addon_id` int(11) NOT NULL auto_increment,
  `addon_item_number` varchar(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `addon_sku` varchar(11) NOT NULL,
  `addon_qty` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_addon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order_addon
-- ----------------------------
INSERT INTO `tbl_order_addon` VALUES ('7', '001', '4', 'AF530', '1', '221', '201');
INSERT INTO `tbl_order_addon` VALUES ('8', '001', '5', 'AF-400', '1', '221', '201');
INSERT INTO `tbl_order_addon` VALUES ('16', '002', '4', 'AF530', '1', '227', '206');
INSERT INTO `tbl_order_addon` VALUES ('15', '001', '4', 'AF530', '1', '226', '206');
INSERT INTO `tbl_order_addon` VALUES ('17', '002', '5', 'AF-400', '1', '227', '206');
INSERT INTO `tbl_order_addon` VALUES ('24', '001', '4', 'AF530', '1', '228', '207');
INSERT INTO `tbl_order_addon` VALUES ('25', '001', '4', 'AF530', '1', '229', '208');
INSERT INTO `tbl_order_addon` VALUES ('26', '001', '4', 'AF530', '1', '231', '210');
INSERT INTO `tbl_order_addon` VALUES ('27', '001', '4', 'AF530', '1', '232', '211');
INSERT INTO `tbl_order_addon` VALUES ('28', '001', '5', 'AF-400', '1', '233', '212');
INSERT INTO `tbl_order_addon` VALUES ('29', '001', '4', 'AF530', '1', '234', '213');
INSERT INTO `tbl_order_addon` VALUES ('30', '001', '5', 'AF-400', '1', '234', '213');
INSERT INTO `tbl_order_addon` VALUES ('31', '001', '5', 'AF-400', '1', '235', '214');
INSERT INTO `tbl_order_addon` VALUES ('32', '001', '4', 'AF530', '1', '237', '216');
INSERT INTO `tbl_order_addon` VALUES ('33', '001', '5', 'AF-400', '1', '237', '216');
INSERT INTO `tbl_order_addon` VALUES ('34', '001', '5', 'AF-400', '1', '246', '225');

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
  `language` varchar(2) NOT NULL default 'EN',
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_delivery
-- ----------------------------
INSERT INTO `tbl_order_delivery` VALUES ('154', '001', '30', '2012-07-18', '2012-07-18', '8', '8', '8', 'Cheryl', 'EN', 'Cheryl', 'It&#39;s a boy! Wishing skies of blue for \ryou...and your new little ray of \rsunshine. Congratulations! \rbb&#39;\r\r\r', '0', '0', '', '6.00', '0', '0', '0', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '165');
INSERT INTO `tbl_order_delivery` VALUES ('156', '001', '33', '2012-07-19', '2012-07-19', '8', '8', '8', 'thanks', 'EN', 'bala', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '1', '1', 'Call before delivery.\n	Avoid lunch hour.\n	', '6.00', '0', '0', '0', 'Mr', 'bala mruugan', '', 'blk 50', '#12-845', '', 'chai chee st', '', '', '460150', 'SG', '', '', '97203694', '64103024', '', 'bala@noel.com.sg', '0', '167');
INSERT INTO `tbl_order_delivery` VALUES ('160', '001', '34', '2012-07-18', '2012-07-20', '3', '4', '3', 'bbbbbbbbbbbbbbbb', 'EN', 'xxxxxxxxxxx', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'vinoth Palanisamy', 'Noel gifts', 'Blk 227', '#10-399', '', 'petir road', '', '', '670217', 'SG', '', '', '81193544', '', '', 'vino@noel.com.sg', '0', '170');
INSERT INTO `tbl_order_delivery` VALUES ('161', '001', '35', '2012-07-18', '2012-07-24', '7', '5', '7', 'good', 'EN', 'vino', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '1', '0', 'Call before delivery.\n	', '6.00', '0', '0', '0', 'Mr', 'bala duraiswam', 'abc saravanantai ', 'blk 5689', '#90-232', 'tai seng building', 'tai seng drive 76868', '', '', '547383', 'SG', '', '', '97894848', '83939303', '', 'dbala2004@gmail.com', '0', '171');
INSERT INTO `tbl_order_delivery` VALUES ('162', '001', '36', '2012-07-18', '2012-07-27', '8', '8', '8', 'sathish', 'EN', 'varun', 'It&#39;s a boy! Wishing skies of blue for \ryou...and your new little ray of \rsunshine. Congratulations! \rbb&#39;\r\r\r', '0', '0', '', '6.00', '0', '0', '0', ' ', 'varun mano', 'standard charted', 'blk 123', '#234-343', 'sembawang', 'admirality', '', '', '235767', 'SG', '', '', '32555474', '23544768', '', 'vinoth_167@yahoo.co.in', '0', '172');
INSERT INTO `tbl_order_delivery` VALUES ('163', '001', '37', '2012-07-18', '2012-07-24', '3', '4', '3', 'akill', 'EN', 'madhu', 'It&#39;s a boy! Wishing skies of blue for \ryou...and your new little ray of \rsunshine. Congratulations! \rbb&#39;\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'akill madhu', 'segers', '234', '3433-232', 'tei seigh', 'north srt', '', '', '2342323', 'SG', '', '', '32568987', '56475868', '', 'madhuakill@gmail.com', '0', '173');
INSERT INTO `tbl_order_delivery` VALUES ('164', '001', '38', '2012-07-18', '2012-07-30', '7', '5', '7', 'Rajesh', 'EN', 'Rupa', 'Congratulations on the arrival of your\rnewborn baby boy\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mrs', 'rupa ganesh', 'mano', 'blk 34', '234-34', 'mambo', 'freeze', '', '', '3425343', 'SG', '', '', '324454353', '435465454', '', 'satheesh.manoharan@gmail.com', '0', '174');
INSERT INTO `tbl_order_delivery` VALUES ('165', '001', '39', '2012-07-18', '2012-07-28', '1', '3', '1', 'babu', 'EN', 'durai', 'Congratulations on the arrival of your\rnewborn baby boy\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'babu rar', 'huge', 'blk 121', '12- 232', 'extra', 'view', '', '', '34286923', 'SG', '', '', '54363445', '45654345', '', 'samvarun@gmail.com', '0', '175');
INSERT INTO `tbl_order_delivery` VALUES ('166', '001', '40', '2012-07-19', '2012-07-30', '1', '3', '1', 'harish', 'EN', 'mano', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'harish kumar', 'kaviyan', 'blk 23', '23-23', 'chennai', 'velachery', '', '', '7656465', 'SG', 'SG', '', '234454', '543564', '', 'harish.vfx89@gmail.com', '0', '176');
INSERT INTO `tbl_order_delivery` VALUES ('167', '001', '40', '2012-07-19', '2012-07-24', '1', '3', '1', 'harish', 'EN', 'mano', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'reshma ra', 'young', 'blk 34', '3242', 'good', 'bad', '', '', '436457', 'SG', 'sg', 'sg', '124323432', '354354765', '', 'santhoshraj@gmail.com', '0', '177');
INSERT INTO `tbl_order_delivery` VALUES ('168', '002', '40', '2012-07-19', '2012-07-22', '8', '8', '8', 'roja', 'EN', 'googu', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mrs', 'roja jo', 'number', 'blk 234', '423', 'soon', 'morning', '', '', '325435433', 'SG', 'sg', 'sg', '235435435', '45365365', '', 'murugan12@gmail.com', '0', '177');
INSERT INTO `tbl_order_delivery` VALUES ('169', '001', '41', '2012-07-19', '2012-07-23', '3', '4', '3', 'vinoth', 'EN', 'rajesh', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'vinoth Sir', 'noel', 'blk 543', '23432', 'value', 'strength', '', '', '454532', 'SG', 'fg', 'dg', '34536455', '43474545', '', 'vinoth167@gmail.com', '0', '178');
INSERT INTO `tbl_order_delivery` VALUES ('170', '001', '2', '2012-07-19', '2012-07-19', '8', '8', '8', 'Lee', 'EN', 'Lee', 'Thanks\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '600219', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '179');
INSERT INTO `tbl_order_delivery` VALUES ('171', '001', '42', '2012-07-19', '2012-07-20', '1', '3', '1', 'pravin', 'EN', 'vinoth', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'vinoth vinoth', 'vinoth', 'blk 232', '323', 'vin', 'vinoth', '', '', '3243232', 'SG', 'vi', 'no', '2349692837', '3487239793', '', 'vinoth167@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('172', '002', '42', '2012-07-19', '2012-07-21', '3', '4', '3', 'pravin', 'EN', 'varun', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'varun varun', 'varun', 'blk 232', '233', 'var', 'varun', '', '', '47873948', 'SG', 'va', 'run', '3454353', '4355345', '', 'varunkumar@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('173', '003', '42', '2012-07-19', '2012-07-22', '7', '5', '7', 'pravin', 'EN', 'bala', 'It&#39;s a boy! Wishing skies of blue for \ryou...and your new little ray of \rsunshine. Congratulations! \rbb&#39;\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'bala bala', 'bala', 'blk 231', '2837', 'bala', 'ba', '', '', '87868', 'SG', 'la', 'ba', '23862837', '29327927', '', 'bala@noel.com.sg', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('174', '004', '42', '2012-07-19', '2012-07-23', '8', '8', '8', 'pravin', 'EN', 'saravanan', 'Congratulations on the arrival of your\rnewborn baby boy\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'sara saravanan', 'sara', 'blk 232', '2322', 'sara', 'vanan', '', '', '8687577', 'SG', 'ravan', 'sara', '9793749389', '34987389789', '', 'saravanan@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('175', '005', '42', '2012-07-19', '2012-07-24', '8', '8', '8', 'pravin', 'EN', 'arthy', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mrs', 'arthy sara', 'arthy', 'blk 343', '4872', 'arthy', 'thy', '', '', '3849822', 'SG', 'ar', 'thy', '9876437598', '8439848547', '', 'arthy.sweety@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('176', '006', '42', '2012-07-19', '2012-07-25', '8', '8', '8', 'pravin', 'EN', 'elakkiya', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'elakkiya elk', 'arthy', 'blk 121', '121', 'elkk', 'elakkiya', '', '', '8687', 'SG', 'kki', 'yya', '8698769879', '8686899879', '', 'elakkiya@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('177', '007', '42', '2012-07-19', '2012-07-25', '7', '5', '7', 'pravin', 'EN', 'oviya', 'It&#39;s a boy! Wishing skies of blue for \ryou...and your new little ray of \rsunshine. Congratulations! \rbb&#39;\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'oviya oviya', 'oviya', 'blk 23', '232', 'oviya', 'oviya', '', '', '326982', 'SG', 'ovi', 'ya', '32849328798', '32879797993', '', 'oviya@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('178', '008', '42', '2012-07-19', '2012-07-26', '3', '4', '3', 'pravin', 'EN', 'mambo', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'mambo mam', 'mambo', 'blk 123', '2131', 'mambo', 'bo', '', '', '83453434', 'SG', 'mam', 'mbo', '865938794', '376487223', '', 'mambo@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('179', '009', '42', '2012-07-19', '2012-07-27', '8', '8', '8', 'pravin', 'EN', 'raja', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'raja raja', 'raja', 'blk 23', '098', 'raja', 'raaa', '', '', '8768768', 'SG', 'jaaa', 'raaaa', '7856786868', '8587878686', '', 'raja@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('180', '010', '42', '2012-07-19', '2012-07-26', '3', '4', '3', 'pravin', 'EN', 'roja', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mrs', 'roja roja', 'roja', 'blk 454', '43534', 'rooo', 'jaaaa', '', '', '34534', 'SG', 'roja', 'jaro', '6869709', '3442432', '', 'roja@gmail.com', '0', '180');
INSERT INTO `tbl_order_delivery` VALUES ('181', '001', '43', '2012-07-20', '2012-07-20', '7', '5', '7', 'Goh , Tomy', 'EN', 'Goh , Tomy', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Goh Tomy', '', '29', '', '', 'Belmond Road 1/12', '', '', '1623155', 'SG', 'SG', '', '11112222', '', '', 'tomy@tomy.com', '0', '181');
INSERT INTO `tbl_order_delivery` VALUES ('182', '001', '45', '2012-07-20', '2012-07-21', '7', '5', '7', 'vivian , vivi', 'EN', 'vivian , vivi', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'vivian vivi', 'vivian', 'blk 12', '23', 'grand', 'palace', '', '', '23432', 'SG', 'sg', '', '324242', '342342', '', 'vinoth11@gmail.com', '0', '182');
INSERT INTO `tbl_order_delivery` VALUES ('183', '001', '44', '2012-07-20', '2012-07-20', '8', '8', '8', 'Su Yee Hong , Amanda', 'EN', 'Su Yee Hong , Amanda', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'Su Yee Hong Amanda', 'SASA International', '54', '#05-11', 'Peoples&#39; Park', 'China Town&#39;s Road', '', '', '123123', 'SG', 'China Town', '', '88881234', '', '', 'test3@test.test', '0', '183');
INSERT INTO `tbl_order_delivery` VALUES ('184', '001', '46', '2012-07-20', '2012-07-20', '8', '8', '8', 'æŽå…‰è€€', 'EN', 'æŽæ˜¾é¾™', 'å­æ•¬æ‚¨è€\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'å…‰è€€ å…‰è€€', '', '99', '#30-1', 'Premium Building', 'Sentosa St 1, Gold Coast', '', '', '563122', 'SG', 'SG', '', '99999999', '', '', 'gy@singtel.net', '0', '184');
INSERT INTO `tbl_order_delivery` VALUES ('185', '001', '45', '2012-07-20', '2012-07-20', '3', '4', '3', 'vivian , Ravi', 'EN', 'vivian , Ravi', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'vivian Ravi', 'vivian', 'blk 12', '23', 'small', 'exchange', '', '', '23432', 'SG', 'sg', '', '354245', '342342', '', 'vinoth11@gmail.com', '0', '185');
INSERT INTO `tbl_order_delivery` VALUES ('186', '001', '47', '2012-07-20', '2012-07-20', '8', '8', '8', 'Obama , Barrack', 'EN', 'Obama , Barrack', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Obama Barrack', '', '123', '#10-10', '', 'US Street', '', '', '100001', 'SG', 'SG', '', '12123333', '', '', 'test5@test.test', '0', '186');
INSERT INTO `tbl_order_delivery` VALUES ('187', '001', '47', '2012-07-20', '2012-07-20', '8', '8', '8', 'Obama , Barrack', 'EN', 'Obama , Barrack', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Obama Barrack', '', '123', '#10-10', '', 'US Street', '', '', '100001', 'SG', 'SG', '', '12123333', '', '', 'test5@test.test', '0', '187');
INSERT INTO `tbl_order_delivery` VALUES ('188', '001', '48', '2012-07-20', '2012-07-20', '8', '8', '8', 'Bento , Estila Ohorma', 'EN', 'Bento , Estila Ohorma', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Bento Estila Ohorma', '', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '123456', 'SG', 'SG', '', '10101010', '', '', 'test6@test.test', '0', '188');
INSERT INTO `tbl_order_delivery` VALUES ('189', '001', '49', '2012-07-21', '2012-07-22', '3', '4', '3', 'Akhil , A', 'EN', 'Akhil , A', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mrs', 'Akhil A', 'akhila', 'blk 12', '12', 'akhila', 'akh', '', '', '86785', 'SG', 'sg', '', '2343234', '4235234', '', 'akhila@gmail.com', '0', '189');
INSERT INTO `tbl_order_delivery` VALUES ('190', '001', '50', '2012-07-23', '2012-07-23', '8', '8', '8', ' , ', 'EN', ' , ', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '190');
INSERT INTO `tbl_order_delivery` VALUES ('191', '001', '44', '2012-07-23', '2012-07-23', '8', '8', '8', 'Su Yee Hong , Amanda', 'EN', 'Su Yee Hong , Amanda', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'Su Yee Hong Amanda', 'SASA International', '54', '#05-11', 'Peoples&#39; Park', 'China Town&#39;s Road', '', '', '100006', 'SG', 'China Town', '', '88881234', '', '', 'test3@test.test', '0', '191');
INSERT INTO `tbl_order_delivery` VALUES ('192', '001', '46', '2012-07-23', '2012-07-23', '3', '4', '3', 'æŽæ˜¾é¾™', 'EN', ' æŽ å…‰è€€ ', 'å­æ•¬æ‚¨è€\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'å…‰è€€ æŽ', '', '99', '#30-1', 'Premium Building', 'Sentosa St 1, Gold Coast', '', '', '563122', 'SG', 'SG', '', '99999999', '', '', 'gy@singtel.net', '0', '192');
INSERT INTO `tbl_order_delivery` VALUES ('193', '002', '46', '2012-07-23', '2012-07-23', '8', '8', '8', 'æŽæ˜¾é¾™', 'EN', 'Ngooi Tiang Ghee', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Tiang Ghee Ngooi', '', '535', '#10-10', 'Far East Flora', 'Street Far East, Wild Wild West Road', '', '', '740125', 'SG', 'SG', '', '12345678', '', '', 'ntg@singtel.net', '0', '192');
INSERT INTO `tbl_order_delivery` VALUES ('194', '001', '48', '2012-07-23', '2012-07-23', '8', '8', '8', 'Bento ', 'EN', 'Sidharta ', 'A New Little Boy to Brighten Your World!\rHe couldn&#39;t have happened to a nicer\rfamily! \rCongratulations to Everyone! \r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Gautama Sidharta ', '', '55', '#01-02', '', 'Street of London', '', '', '222456', 'SG', 'SG', 'State', '45674567', '', '', 'sd@hv.com', '0', '193');
INSERT INTO `tbl_order_delivery` VALUES ('195', '002', '48', '2012-07-23', '2012-07-23', '3', '4', '3', 'Bento', 'EN', 'Christ', 'Congratulations on the arrival of your\rnewborn baby boy\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Lexus Christ', '', '5', '#05-05', '', 'Street of Jeruselum', '', '', '123456', 'SG', 'SG', '', '12345678', '', '', 'cl@cl.com', '0', '193');
INSERT INTO `tbl_order_delivery` VALUES ('196', '001', '47', '2012-07-23', '2012-07-23', '8', '8', '8', 'Obama', 'EN', 'Rihanna', 'Congratulations on the arrival of your\rnewborn baby boy\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Teo Rihanna', '', '45', '#10-10', '', 'US Street', '', '', '456456', 'SG', 'SG', 'SG', '123123', '', '', 'SG@sg.com', '0', '194');
INSERT INTO `tbl_order_delivery` VALUES ('197', '002', '47', '2012-07-23', '2012-07-23', '8', '8', '8', 'Obama', 'EN', 'TT', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Ms', 'Teo TT', '', '15', '#05-05', 'Pearl Bilding ', 'China Town&#39;s Road', '', '', '465456', 'SG', 'SG', '', '546789', '', '', 'brightleee@hotmail.com', '0', '194');
INSERT INTO `tbl_order_delivery` VALUES ('198', '003', '47', '2012-07-23', '2012-07-23', '8', '8', '8', 'Obama , Barrack', 'EN', 'Obama , Barrack', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Obama Barrack', '', '123', '#10-10', '', 'US Street', '', '', '100001', 'SG', 'SG', '', '12123333', '', '', 'test5@test.test', '0', '194');
INSERT INTO `tbl_order_delivery` VALUES ('199', '001', '2', '2012-07-23', '2012-07-23', '7', '5', '7', 'Lee', 'EN', 'Toh', 'æ­å–œ\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Charles Toh', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '200001', 'SG', 'city', 'state', '12345656', '', '', 'charles@abc.com', '0', '195');
INSERT INTO `tbl_order_delivery` VALUES ('200', '002', '2', '2012-07-23', '2012-07-23', '3', '4', '3', 'Lee', 'EN', 'Vo', 'Congratulations & Best Wishes On The\rArrival Of Your Wonderful Newborn Twin \rGirl\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Nam Vo', '', '167', '11#11', 'Far East Building ', '124, ace road', '', '', '300006', 'SG', '', '', '12345678', '', '', 'nam@abc.com', '0', '195');
INSERT INTO `tbl_order_delivery` VALUES ('201', '003', '2', '2012-07-23', '2012-07-23', '7', '5', '7', 'Ming Liang , Lee ', 'EN', 'Ming Liang , Lee ', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '100001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '195');
INSERT INTO `tbl_order_delivery` VALUES ('202', '001', '51', '2012-07-26', '2012-07-26', '8', '8', '8', ' , ', 'EN', ' , ', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '196');
INSERT INTO `tbl_order_delivery` VALUES ('207', '001', '2', '2012-07-26', '2012-07-26', '8', '8', '8', 'Ming Liang , Lee ', '', 'Ming Liang , Lee ', 'null\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '100001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '201');
INSERT INTO `tbl_order_delivery` VALUES ('209', '001', '46', '2012-07-27', '2012-07-27', '8', '8', '8', 'å…‰è€€ æŽ\r\r\r\r\r', '', 'å…‰è€€ æŽ\r\r\r', 'å…‰è€€ æŽ\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'å…‰è€€ æŽ', '', '99', '#30-1', 'Premium Building', 'Sentosa St 1, Gold Coast', '', '', '563122', 'SG', 'SG', '', '99999999', '', '', 'gy@singtel.net', '0', '203');
INSERT INTO `tbl_order_delivery` VALUES ('212', '001', '48', '2012-07-27', '2012-07-27', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Bento Estila Ohorma', '', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '123456', 'SG', 'SG', '', '10101010', '', '', 'test6@test.test', '0', '206');
INSERT INTO `tbl_order_delivery` VALUES ('213', '001', '2', '2012-08-07', '2012-08-07', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '207');
INSERT INTO `tbl_order_delivery` VALUES ('214', '001', '2', '2012-08-07', '2012-08-07', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '208');
INSERT INTO `tbl_order_delivery` VALUES ('215', '001', '2', '2012-08-09', '2012-08-09', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '209');
INSERT INTO `tbl_order_delivery` VALUES ('216', '001', '2', '2012-08-10', '2012-08-10', '3', '4', '3', '\r\r\r\r\r', '', '\r\r\r', 'æ­å–œ\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Charles Toh', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '200001', 'SG', 'city', 'state', '12345656', '', '', 'charles@abc.com', '0', '210');
INSERT INTO `tbl_order_delivery` VALUES ('217', '001', '2', '2012-08-10', '2012-08-10', '3', '4', '3', '\r\r\r\r\r', '', '\r\r\r', 'æ­å–œ\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Charles Toh', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '200001', 'SG', 'city', 'state', '12345656', '', '', 'charles@abc.com', '0', '211');
INSERT INTO `tbl_order_delivery` VALUES ('218', '001', '2', '2012-08-10', '2012-08-10', '7', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '212');
INSERT INTO `tbl_order_delivery` VALUES ('219', '001', '2', '2012-08-10', '2012-08-10', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '213');
INSERT INTO `tbl_order_delivery` VALUES ('220', '001', '2', '2012-08-10', '2012-08-10', '7', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '214');
INSERT INTO `tbl_order_delivery` VALUES ('221', '001', '2', '2012-08-10', '2012-08-10', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '215');
INSERT INTO `tbl_order_delivery` VALUES ('222', '001', '2', '2012-08-10', '2012-08-10', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '216');
INSERT INTO `tbl_order_delivery` VALUES ('223', '001', '71', '2012-08-10', '2012-08-10', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '217');
INSERT INTO `tbl_order_delivery` VALUES ('224', '001', '70', '2012-08-10', '2012-08-10', '8', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', ' ', 'test ', 'test', '', '', '', 'test', '', '', '70000', 'SG', '', '', '88888888', '', '', 'namcohcm@yahoo.com', '0', '218');
INSERT INTO `tbl_order_delivery` VALUES ('225', '001', '2', '2012-08-11', '2012-08-11', '7', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '219');
INSERT INTO `tbl_order_delivery` VALUES ('226', '001', '2', '2012-08-11', '2012-08-11', '7', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '220');
INSERT INTO `tbl_order_delivery` VALUES ('227', '001', '2', '2012-08-12', '2012-08-12', '7.30 - 10.00 pm', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Charles Toh', 'aaa', '167 ', '#06-12 ', '', 'Jalan Bukit Merah ', '', '', '200001', 'SG', 'city', 'state', '12345656', '', '', 'charles@abc.com', '0', '221');
INSERT INTO `tbl_order_delivery` VALUES ('228', '001', '2', '2012-08-14', '2012-08-14', '9am to 12noon', '3', '1', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '222');
INSERT INTO `tbl_order_delivery` VALUES ('229', '001', '2', '2012-08-14', '2012-08-14', '7.30 - 10.00 pm', '5', '7', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '223');
INSERT INTO `tbl_order_delivery` VALUES ('230', '001', '2', '2012-08-14', '2012-08-14', '9am to 12noon', '3', '1', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '224');
INSERT INTO `tbl_order_delivery` VALUES ('231', '001', '2', '2012-08-14', '2012-08-14', 'Anytime of the day', '8', '8', '\r\r\r\r\r', '', '\r\r\r', '\r\r\r\r\r\r', '0', '0', '', '6.00', '0', '0', '0', 'Mr', 'Ming Liang Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '300001', 'SG', 'SG', 'state', '96938443', '', '', 'mingliang@ua-consultants.com', '0', '225');

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
  `addon_item_number` varchar(11) NOT NULL,
  `addon_product_id` int(11) NOT NULL,
  `addon_sku` varchar(20) NOT NULL,
  `addon_qty` int(11) NOT NULL,
  `addon_product` int(11) NOT NULL default '1',
  PRIMARY KEY  (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_item
-- ----------------------------
INSERT INTO `tbl_order_item` VALUES ('158', 'HFF108', '001', '165', '154', '001', '464', '', 'HFF108', '1', '', '0', 'PR00', '60.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('160', 'HBH106', '001', '167', '156', '001', '161', '', 'HBH106', '1', '', '0', 'PR00', '65.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('167', 'HBH101C', '001', '170', '160', '001', '146', '', 'HBH101C', '3', 'AN', '0', 'PR00', '85.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('168', 'HSM102', '001', '171', '161', '001', '177', '', 'HSM102', '1', 'AN', '0', 'PR00', '60.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('169', 'HVW112', '001', '172', '162', '001', '244', '', 'HVW112', '1', 'FD', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('170', 'HSM115', '001', '173', '163', '001', '190', '', 'HSM115', '1', 'AN', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('171', 'HHB121', '001', '174', '164', '001', '141', '', 'HHB121', '4', 'AN', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('172', 'HVW101', '001', '175', '165', '001', '233', '', 'HVW101', '7', 'AN', '0', 'PR00', '65.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('173', 'HSM119', '001', '176', '166', '001', '194', '', 'HSM119', '2', 'AN', '0', 'PR00', '120.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('174', 'HSM119', '001', '177', '167', '001', '194', '', 'HSM119', '2', 'AN', '0', 'PR00', '120.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('175', 'HPG130', '001', '177', '168', '002', '292', '', 'HPG130', '1', 'TY', '0', 'PR00', '500.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('176', 'HNB138B', '001', '178', '169', '001', '97', '', 'HNB138B', '1', '', '0', 'PR00', '300.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('177', 'HFF108', '001', '179', '170', '001', '464', '', 'HFF108', '1', 'TY', '0', 'PR00', '60.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('178', 'HHB123', '001', '180', '171', '001', '143', '', 'HHB123', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('179', 'HSM104', '001', '180', '172', '002', '179', '', 'HSM104', '1', 'AN', '0', 'PR00', '70.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('180', 'HBH109', '001', '180', '173', '003', '164', '', 'HBH109', '1', '', '0', 'PR00', '60.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('181', 'HEH112', '001', '180', '174', '004', '261', '', 'HEH112', '1', 'HW', '0', 'PR00', '120.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('182', 'HAF125', '001', '180', '175', '005', '324', '', 'HAF125', '1', '', '0', 'PR00', '300.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('183', 'HVW116', '001', '180', '176', '006', '248', '', 'HVW116', '1', 'AN', '0', 'PR00', '180.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('184', 'HPG123', '001', '180', '177', '007', '285', '', 'HPG123', '1', '', '0', 'PR00', '150.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('185', 'HSR117', '001', '180', '178', '008', '495', '', 'HSR117', '1', '', '0', 'PR00', '120.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('186', 'HWS187', '001', '180', '179', '009', '587', '', 'HWS187', '1', '', '0', 'PR00', '500.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('187', 'HHB124', '001', '180', '180', '010', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('188', 'SPDC100005', '001', '181', '181', '001', '277', '', 'HPG113', '1', 'WW', '0', 'PR00', '103.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '001', '4', 'AF530', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('189', 'HNB137A', '001', '182', '182', '001', '94', '', 'HNB137A', '1', '', '0', 'PR00', '250.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('190', 'HGO108', '001', '183', '183', '001', '345', '', 'HGO108', '1', 'TY', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('191', 'HNB136A', '002', '183', '183', '001', '92', '', 'HNB136A', '1', 'TY', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '0.00', '0', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('192', 'HNB136A', '001', '184', '184', '001', '92', '', 'HNB136A', '1', 'TY', '0', 'PR00', '200.00', 'ZD03', '15.00', 'ZS03', '6.00', '0', 'ibrhcx8nu0', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('193', 'HSM116', '001', '185', '185', '001', '191', '', 'HSM116', '1', '', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('194', 'HGO108', '001', '186', '186', '001', '345', '', 'HGO108', '1', 'TY', '0', 'PR00', '100.00', 'ZD02', '20.00', 'ZS03', '10.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('195', 'SPDC100006', '001', '187', '187', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '103.00', 'ZD02', '20.00', 'ZS03', '10.00', '1', 'zedem23zc4', '0', '0', '001', '4', 'AF530', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('196', 'HGO108', '001', '188', '188', '001', '345', '', 'HGO108', '1', 'TY', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('197', 'SPDC100007', '002', '188', '188', '001', '277', '', 'HPG113', '1', 'TY', '0', 'PR00', '92.00', 'ZD03', '0.00', 'ZS03', '0.00', '1', '', '0', '0', '002', '5', 'AF-400', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('198', 'HVW103', '001', '189', '189', '001', '235', '', 'HVW103', '1', 'TY', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('199', 'HHB119', '001', '190', '190', '001', '139', '', 'HHB119', '1', 'AN', '0', 'PR00', '60.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', 'tfat6dosth', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('200', 'HGO108', '001', '191', '191', '001', '345', '', 'HGO108', '1', '', '0', 'PR00', '100.00', 'ZD02', '30.00', 'ZS03', '15.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('201', 'HNB136A', '002', '191', '191', '001', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD02', '20.00', 'ZS03', '0.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('202', 'SPDC100008', '003', '191', '191', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '92.00', 'ZD02', '20.00', 'ZS03', '0.00', '1', 'zedem23zc4', '0', '0', '003', '5', 'AF-400', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('203', 'HHB124', '001', '192', '192', '001', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('204', 'HNB136A', '001', '192', '193', '002', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('205', 'HHB124', '001', '193', '194', '001', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('206', 'HNB136A', '001', '193', '195', '002', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('207', 'HHB124', '002', '193', '195', '002', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '0.00', '0', '', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('208', 'HFF108', '001', '194', '196', '001', '464', '', 'HFF108', '1', '', '0', 'PR00', '60.00', 'ZD03', '15.00', 'ZS03', '6.00', '0', 'ibrhcx8nu0', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('209', 'HGO108', '001', '194', '197', '002', '345', '', 'HGO108', '1', '', '0', 'PR00', '100.00', 'ZD02', '30.00', 'ZS03', '6.00', '0', 'ibrhcx8nu0', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('210', 'HHB124', '002', '194', '197', '002', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '15.00', 'ZS03', '0.00', '0', 'ibrhcx8nu0', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('211', 'SPDC100009', '001', '194', '198', '003', '277', '', 'HPG113', '1', '', '0', 'PR00', '103.00', 'ZD03', '15.00', 'ZS03', '10.00', '1', 'ibrhcx8nu0', '0', '0', '001', '4', 'AF530', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('212', 'HFF108', '001', '195', '199', '001', '464', '', 'HFF108', '1', '', '0', 'PR00', '60.00', 'ZD02', '20.00', 'ZS03', '6.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('213', 'HHB124', '001', '195', '200', '002', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD02', '20.00', 'ZS03', '6.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('214', 'HGO108', '002', '195', '200', '002', '345', '', 'HGO108', '1', '', '0', 'PR00', '100.00', 'ZD02', '30.00', 'ZS03', '0.00', '0', 'zedem23zc4', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('215', 'SPDC100010', '001', '195', '201', '003', '277', '', 'HPG113', '1', '', '0', 'PR00', '103.00', 'ZD02', '20.00', 'ZS03', '10.00', '1', 'zedem23zc4', '0', '0', '001', '4', 'AF530', '1', '1');
INSERT INTO `tbl_order_item` VALUES ('216', 'HHB122', '001', '196', '202', '001', '142', '', 'HHB122', '1', 'VD', '0', 'PR00', '100.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', 'HFG50%', '0', '0', '', '0', '0', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('221', 'HPG113', '001', '201', '207', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '10.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('223', 'HHB124', '001', '203', '209', '001', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '15.00', 'ZS03', '6.00', '0', 'ibrhcx8nu0', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('226', 'SPDC100012', '001', '206', '212', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '15.00', 'ZS03', '6.00', '1', 'ibrhcx8nu0', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('227', 'SPDC100013', '002', '206', '212', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '15.00', 'ZS03', '0.00', '1', 'ibrhcx8nu0', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('228', 'SPDC100013', '001', '207', '213', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('229', 'SPDC100014', '001', '208', '214', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('230', 'HHB124', '001', '209', '215', '001', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('231', 'SPDC100015', '001', '210', '216', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('232', 'SPDC100016', '001', '211', '217', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('233', 'SPDC100017', '001', '212', '218', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('234', 'SPDC100019', '001', '213', '219', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('235', 'SPDC100020', '001', '214', '220', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('236', 'HPG113', '001', '215', '221', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('237', 'SPDC100022', '001', '216', '222', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('238', 'HAF101', '001', '217', '223', '001', '300', '', 'HAF101', '1', '', '0', 'PR00', '50.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('239', 'HHB124', '001', '218', '224', '001', '14', '', 'HHB124', '1', 'AN', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('240', 'HNB136A', '001', '219', '225', '001', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('241', 'HPG113', '001', '220', '226', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '0.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('242', 'HNB136A', '001', '221', '227', '001', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('243', 'HVW102', '001', '222', '228', '001', '234', '', 'HVW102', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('244', 'HNB136A', '001', '223', '229', '001', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('245', 'HNB136A', '001', '224', '230', '001', '92', '', 'HNB136A', '1', '', '0', 'PR00', '200.00', 'ZD03', '0.00', 'ZS03', '6.00', '0', '', '0', '0', '', '0', '', '0', '0');
INSERT INTO `tbl_order_item` VALUES ('246', 'SPDC100023', '001', '225', '231', '001', '277', '', 'HPG113', '1', '', '0', 'PR00', '80.00', 'ZD03', '0.00', 'ZS03', '6.00', '1', '', '0', '0', '', '0', '', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_order_payment
-- ----------------------------
INSERT INTO `tbl_order_payment` VALUES ('1', '116.63', 'CC', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_payment` VALUES ('2', '220.42', 'CC', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_payment` VALUES ('3', '104.86', 'CC', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_payment` VALUES ('4', '129.47', 'CC', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_payment` VALUES ('5', '104.86', 'CC', '', '', '', '', '', '', '', '', '', '0');
INSERT INTO `tbl_order_payment` VALUES ('6', '104.86', 'CC', '', '', '', '', '', '', '', '', '', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_photos
-- ----------------------------
INSERT INTO `tbl_photos` VALUES ('13', 'images/photos/13.JPG', '', 'A vibrant colourful display! ', '1', '1', '1343266333');
INSERT INTO `tbl_photos` VALUES ('14', 'images/photos/14.JPG', '', 'Cheerful Sunflowers.', '1', '2', '1343206705');
INSERT INTO `tbl_photos` VALUES ('15', 'images/photos/15.JPG', '', 'Splendid red Gerberas.', '1', '3', '1343206837');

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
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('4', '-1', '3', 'AF530', 'Vase1', '23.00', '', '', 'images/product/4.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '2012-06-22', '1', '', '', '', '', '', '', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('5', '-1', '3', 'AF-400', 'Vase 2', '12.00', '', '', 'images/product/5.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '2012-06-22', '1', '', '', '', '', '', '', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('7', '-1', '1', 'HPG110', 'Classic Gift Basket', '50.00', '', 'Â·Lindt Almond De Luxe Swiss Chocolate 75.5g\nÂ·Walkers Belgian Chocolate Chunk Biscuits 150g\nÂ·Fomec\'s California Prune Essence 2x42g\nÂ·Fox\'s Crystal Clear Fruits Candy 180g\nÂ·Beryl\'s Tiramisu Chocolate 65g\nÂ·ST Daifour Snak Pack Jam 3x28g\nÂ·Packaged in Paper Tray', 'images/product/FY1112/HPG110.jpg', '0', '0', '0', '0', '1', '0', '2012-05-29', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
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
INSERT INTO `tbl_product` VALUES ('33', '-1', '1', 'HNB101A', 'Supreme 2-Tier Diaper Cake (Girl)', '200.00', '', '.4pcs Cater&#39;s Little Layette Wear Deluxe Gift Set\r\n.20cm Pull String Baby Safe Musical Elephant\r\n.Bear Embrace Soft Blanket\r\n.Kodomo Toiletries Handy Pack\r\n.Shears 100% Cotton Bib Set\r\n.Jumbo Children Growth Chart\r\n.23 pkts Drypers (92 Diapers)', 'images/product/FY1112/HNB101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '.4pcs Cater&#39;s Little Layette Wear Deluxe Gift Set\r\n.20cm Pull String Baby Safe Musical Elephant\r\n.Bear Embrace Soft Blanket\r\n.Kodomo Toiletries Handy Pack\r\n.Shears 100% Cotton Bib Set\r\n.Jumbo Children Growth Chart\r\n.23 pkts Drypers (92 Diapers)', 'F13', '1', 'I', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('34', '-1', '1', 'HNB101B', 'Supreme 2-Tier Diaper Cake (Boy)', '200.00', '', '.4pcs Cater&#39;s Little Layette Wear Deluxe Gift Set\r\n.20cm Pull String Baby Safe Musical Elephant\r\n.Bear Embrace Soft Blanket\r\n.Kodomo Toiletries Handy Pack\r\n.Shears 100% Cotton Bib Set\r\n.Jumbo Children Growth Chart\r\n.23 pkts Drypers (92 Diapers)', 'images/product/FY1112/HNB101A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '.4pcs Cater&#39;s Little Layette Wear Deluxe Gift Set\r\n.20cm Pull String Baby Safe Musical Elephant\r\n.Bear Embrace Soft Blanket\r\n.Kodomo Toiletries Handy Pack\r\n.Shears 100% Cotton Bib Set\r\n.Jumbo Children Growth Chart\r\n.23 pkts Drypers (92 Diapers)', 'F13', '1', 'I', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('35', '-1', '1', 'HNB102A', 'Choice Diaper Cake (Girl)', '70.00', '', '.Baby Bear Photo Frame\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.7pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('36', '-1', '1', 'HNB102B', 'Choice Diaper Cake (Boy)', '70.00', '', '.Baby Bear Photo Frame\n.Bear Embrace Soft Blanket\n.Kodomo Toiletries Handy Pack\n.7pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB102A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('37', '-1', '1', 'HNB104A', 'Elmo Diaper Cake (Girl)', '110.00', '', '.Sesame Elmo Beginnings Bedtime Clothbook\n.4pcs Sesame Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.7 pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('38', '-1', '1', 'HNB104B', 'Elmo Diaper Cake (Boy)', '110.00', '', '.Sesame Elmo Beginnings Bedtime Clothbook\n.4pcs Sesame Baby Wear Deluxe Gift Set\n.Bear Embrace Soft Blanket\n.7 pkts Drypers (28 Diapers)', 'images/product/FY1112/HNB104A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('39', '-1', '1', 'HNB105A', 'Delux Diaper Cake (Girl)', '180.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Gift Set\n.20cm Baby Safe Little Me To You Tatty Teddy\n.Lucky Baby Mini Laser Safety Clip Fan\n.6pcs Shears Wash Cloths\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.11pkts Drypers (44 Diapers)', 'images/product/FY1112/HNB105A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('40', '-1', '1', 'HNB105B', 'Delux Diaper Cake (Boy)', '180.00', '', '.2pcs Osh Kosh B\'gosh Baby Wear Gift Set\n.20cm Baby Safe Little Me To You Tatty Teddy\n.Lucky Baby Mini Laser Safety Clip Fan\n.6pcs Shears Wash Cloths\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.11pkts Drypers (44 Diapers)', 'images/product/FY1112/HNB105A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('41', '-1', '1', 'HNB106A', 'Value Baby Bag (Girl)', '50.00', '', '.4pcs Shears Baby Wear Deluxe Gift Set\r\n.Bear Embrace Soft Blanket\r\n.Baby Bear Photo Frame\r\n.Everlasting Sweet Roses\r\n.Baby Paper Carrier', 'images/product/FY1112/HNB106A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '.4pcs Shears Baby Wear Deluxe Gift Set\r\n.Bear Embrace Soft Blanket\r\n.Baby Bear Photo Frame\r\n.Everlasting Sweet Roses\r\n.Baby Paper Carrier', 'F13', '1', 'I', '0.00', '1');
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
INSERT INTO `tbl_product` VALUES ('52', '-1', '1', 'HNB112A', 'Mum & Baby (Girl)', '100.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 2X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Beautiful Carnations Bouquet', 'images/product/FY1112/HNB112A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
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
INSERT INTO `tbl_product` VALUES ('85', '-1', '1', 'HNB132B', 'Baby Time (Boy)', '150.00', '', '.Brand\'s Essence of Chicken 6X42g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.K\'s Kids Flexi-Arch Multi Function Play Gym\n.Lucky Baby Mini Laser Safety Clip Fan\n.Baby Bear Photo Frame\n.Shears Bottle & Babyfood Warmer\n.Packaged with Sweet Gerberas and Baby Breath', 'images/product/FY1112/HNB132A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('86', '-1', '1', 'HNB133A', 'Favourite Baby (Girl)', '160.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.Packaged with Sunflower, Mini Carnations and Matthiolas in Wooden Trollley Tray', 'images/product/FY1112/HNB133A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('87', '-1', '1', 'HNB133B', 'Favourite Baby (Boy)', '160.00', '', '.D.O.M Benedictine 375ml\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.Packaged with Sunflower, Mini Carnations and Matthiolas in Wooden Trollley Tray', 'images/product/FY1112/HNB133A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('88', '-1', '1', 'HNB134A', 'Special Baby (Girl)', '180.00', '', '.D.O.M Benedictine 375ml.\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB134A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('89', '-1', '1', 'HNB134B', 'Special Baby (Boy)', '180.00', '', '.D.O.M Benedictine 375ml.\n.Brand\'s Essence of Chicken 6X42g\n.10pcs Sesame Beginnings Baby Wear Deluxe Gift Set\n.20cm Pull String Baby Safe Musical Elephant\n.Packaged with Cheerful Gerberas', 'images/product/FY1112/HNB134A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('90', '-1', '1', 'HNB135A', 'Snuggle Baby (Girl)', '200.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.20cm Little Me To You Baby Safe Tatty Teddy\n.250ml Avent Feeding Bottle\n.Baby Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.5pcs Children Melamine Feeding Set\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB135A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('91', '-1', '1', 'HNB135B', 'Snuggle Baby (Boy)', '200.00', '', '.10pcs Shears Baby Wear Deluxe Gift Set\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.20cm Little Me To You Baby Safe Tatty Teddy\n.250ml Avent Feeding Bottle\n.Baby Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.5pcs Children Melamine Feeding Set\n.Jumbo Children Growth Chart\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB135A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('92', '-1', '1', 'HNB136A', 'Complete Baby (Girl)', '200.00', '', '.Chateau Allegret Bordeaux Red Wine 75cl\n.Bird&#39;s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand&#39;s Essence of Chicken 6X42g\n.2pcs Osh Kosh B&#39;gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('93', '-1', '1', 'HNB136B', 'Complete Baby (Boy)', '200.00', '', '.Chateau Allegret Bordeaux Red Wine 75cl\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('94', '-1', '1', 'HNB137A', 'Complete Baby (Girl)', '250.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('95', '-1', '1', 'HNB137B', 'Complete Baby (Boy)', '250.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.5pcs Children Melamine Feeding Set\n.Bear Embrace Soft Blanket\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Cheerful Gerberas', 'images/product/FY1112/HNB136A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('96', '-1', '1', 'HNB138A', 'Leading Baby (Girl)', '300.00', '', '.Brand\'s Bird\'s Nest with Rock Sugar 6X42g\n.Brand\'s Essence of Chicken 6X42g\n.2pcs Osh Kosh B\'gosh Baby Wear Deluxe Gift Set\n.Baby Love Deluxe Nursing Pillow\n.125ml Avent Feeding Bottle\n.250ml Avent Feeding Bottle\n.12 Months Baby\'s Photo Album\n.0.5Litres Stainless Steel Vacuum Flask\n.4pcs Children Melamine Feeding Set\n.15cm Baby Safe Bebe Rattle Rabbit\n.Arran Aromatic Baby Feel Happy Mood Enhancing CD\n.Packaged in Beautiful Laundry Basket with Everlasting Rose Bouquet', 'images/product/FY1112/HNB138A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
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
INSERT INTO `tbl_product` VALUES ('125', '-1', '1', 'HHB101', 'Lady Charm', '85.00', '', 'Charm the lady of your dream with \"Lady Charm\", specially created with 10 beautiful Red Roses and 6 Cymbidiums blooms that enchants and captivates!', 'images/product/FY1112/HHB101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
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
INSERT INTO `tbl_product` VALUES ('175', '-1', '1', 'HBH120', 'Pamper In Style', '160.00', '', 'Like us, every gentleman deserves to be pampered! So we packed a stylish ALAIN DELON\'s Roller Pen and Ball Point Pen Executive Gift Set. smooth Chateau Saint Floran Bordeaux Red Wine 75cl and a box of delectable Guylian Opus Chocolate 200g in an exquisite handcrafted basket that is sure to thrill him!', 'images/product/FY1112/HBH120.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('176', '-1', '1', 'HSM101', 'Garden In A Bag', '50.00', '', 'The love of your life deserves the best, so express your language of love with our creation of â€œGarden In a Bagâ€, specially packed with 10 beautiful Champagne Roses, Mini Roses and Statices in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM101.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('177', '-1', '1', 'HSM102', 'Bag of Romance', '60.00', '', 'The love of your lifedeserves the best, so express your language of love with our creation of \"Bag Of Romance\", specially packed with 10 beautiful Bandung Roses, Pink Eustomas and Million Stars in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM102.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('180', '-1', '1', 'HSM105', 'Beary Basket', '60.00', '', 'Tea calms while roses charm. Enchant your darling with \"A Beary Flavourful Tea Basket\" because she deserves the best! The elegant gift basket is filled with 18 beautiful Red Roses and 8pcs 8cm Mini Handphone Bears!', 'images/product/FY1112/HSM105.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('186', '-1', '1', 'HSM111', 'Lovely Miss Bunny', '100.00', '', 'For the sweet and coy girl of your dream, \"Lovely Miss Bunny\" consisting of the 100cm Beauty Rabbit and a sweet bouquet of 3 Maria Roses, 6 Bandung Roses and Eustomas will melt her heart instantly!', 'images/product/FY1112/HSM111.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
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
INSERT INTO `tbl_product` VALUES ('256', '-1', '1', 'HEH106', 'Sona 19L Electrical Oven', '100.00', '', 'Sona 19L Electrical Oven', 'images/product/FY1112/HEH106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', 'Sona 19L Electrical Oven', 'F13', '1', 'I', '0.00', '1');
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
INSERT INTO `tbl_product` VALUES ('277', '-1', '2', 'HPG113', 'Succulent Gift Basket', '80.00', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\r\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\r\nÂ·Danson Mango Milk Chocolate 70g\r\nÂ·Millton Espresso White Chocolate 120g\r\nÂ·Fox&#39;s Crinkles Chocolate Cookies 200g\r\nÂ·Natural Almonds Salt Roasted in Shell 120g\r\nÂ·Packaged in Basket', 'images/product/FY1112/HPG113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', 'Â·Lindt Lindor Assortment Swiss Chocolate 200g\r\nÂ·Famous Amos Chocolate Chip & Pecan Cookies 351g\r\nÂ·Danson Mango Milk Chocolate 70g\r\nÂ·Millton Espresso White Chocolate 120g\r\nÂ·Fox&#39;s Crinkles Chocolate Cookies 200g\r\nÂ·Natural Almonds Salt Roasted in Shell 120g\r\nÂ·Packaged in Basket', 'F13', '1', 'I', '0.00', '1');
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
INSERT INTO `tbl_product` VALUES ('690', '-1', '1', 'HHB117', 'Regal Blooms', '50.00', '', 'Red Roses are the traditonal symbols for love and romance, so we dressed 12 Red Roses with sweet Pink Hydrangeas to help you convey your deep love and appreciation with a touch of sweetness!', 'images/product/FY1112/HHB117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('691', '-1', '1', 'HNB113A', 'Smiling Baby (Girl)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.1pkt Drypers \nEverlasting Sweet Roses\n.PVC Storage Box', 'images/product/FY1112/HNB113A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('692', '-1', '1', 'HNB113B', 'Smiling Baby (Boy)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 3X70g\n.4pcs Shears Baby Wear Deluxe Gift Set\n.Jumbo Children Growth Chart\n.1pkt Drypers \nEverlasting Sweet Roses\n.PVC Storage Box', 'images/product/FY1112/HNB113A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('693', '-1', '1', 'HNB114A', 'Beautiful Baby (Girl)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.4pc Shears Baby Wear Deluxe Gift Set\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB114A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('694', '-1', '1', 'HNB114B', 'Beautiful Baby (Boy)', '50.00', '', '.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 6X70g\n.4pc Shears Baby Wear Deluxe Gift Set\n.Packaged with Cheerful Sunflowers', 'images/product/FY1112/HNB114A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('695', '-1', '1', 'HNB128A', 'Baby Deal (Girl)', '120.00', '', '.D.O.M Benedictine 375ml\n.Bird\'s Nest Wild Ginseng with White Fungus & Rock Sugar 2X70g\n.Quilted Mattress with Pillow and Mosquito Net 96cmX50cm\n.Packaged with Gerberas and Mini Carnations', 'images/product/FY1112/HNB128A.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('696', '-1', '1', 'HBH119', 'Write In Style', '100.00', '', '', 'images/product/FY1112/HBH119.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '2', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('697', '-1', '1', 'HSM103', 'Bag of Sweet Love', '65.00', '', 'The love of your life deserves the best, so express your language of love with our creation of â€œBag of Sweet Loveâ€, specially packed with 10 beautiful Maria Roses, Purple Eustomas and Extoic Wax Flowers in Sweet Love Messages Box Carrier.', 'images/product/FY1112/HSM103.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('698', '-1', '1', 'HSM104', 'Sweet Heart For You', '70.00', '', 'For your sweetheart who is so dear to you, let \"Sweet Heart For You\" tell her of your love so true. 18 luscious Red Roses paired with Dansonâ€™s \"Love Is Beautiful\" Chocolate with Almond 150g will leave her with the sweet aftertaste!', 'images/product/FY1112/HSM104.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('699', '-1', '1', 'HSM106', 'Puppy Love', '70.00', '', 'Like \"Puppy Love\" that is sweet and memorable, our lovely creation of an cuddly 30cm Lovely Dog tucked in a luscious bed of 15 Red Roses, Mini Roses and Million Stars will melt her heart!', 'images/product/FY1112/HSM106.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('700', '-1', '1', 'HSM107', 'Surprises In A Box', '60.00', '', 'Everyone loves to recieve \"Surprises In A Box\" because you never know what you are going to get! With an adorable 20cm Schnauzer Handphone Stand Plush, 6 delicious Ferrero Rochers Chocolate, 6 luscious Red Roses and Heart-shaped Helium Floating Balloon, we are certain this will be one of the best gifts she get!', 'images/product/FY1112/HSM107.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('701', '-1', '1', 'HSM108', '\"One In A Million!\"', '70.00', '', 'Proclaim how lucky you are because she is so special; she is \"One In A Million\"! Cuddly 18cm Boofle with \"One in a million\" T-shirt paired with 6 elegant Red Roses, Alstromerias and 2 Heart-shaped Helium Floating Ballons simply says it all!', 'images/product/FY1112/HSM108.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('702', '-1', '1', 'HSM109', 'Sweetness In A Box', '50.00', '', 'Sweet nothings cannot get better than giving her all the \"Sweetness In A Box\"! We let an 30cm Adorable Pink Hippo lend a soft touch to 6 Pink Roses Roses and Millions Stars with 2 Heart- shaped Helium Floating Balloons in saying \"I Love You\"!', 'images/product/FY1112/HSM109.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('703', '-1', '1', 'HSM110', 'Precious Box Of Love', '100.00', '', 'Tease her with this luxurious\" Precious Box Of Love\" filled with 8 Bandung Roses, Statices, Million Stars, Heart-shaped Helium Floating Balloon and classy Pink Leatherette 3 Tiers Jewellery Box. She is sure to feel very precious!', 'images/product/FY1112/HSM110.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('704', '-1', '1', 'HSM112', 'Beary Romantic', '60.00', '', 'Recreate the very first feelings of falling in love with \"Beary Romantic\" as 38cm Jeff Lavender Soft Bear adds a soft touch to the accompanying Bouquet of 6 Maria Roses, Eustomas, Statices and Nosa!', 'images/product/FY1112/HSM112.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('705', '-1', '1', 'HSM113', 'Beary Much In Love', '100.00', '', 'For the very much in love, our creation of \"Beary Much In Love\" where 70cm Light Brown Fat Face Bear paired with beautiful bouquet of 8 Champagne Roses, Million Stars and Statices simply tells of the love you have for each other.', 'images/product/FY1112/HSM113.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('706', '-1', '1', 'HSM114', 'Beary Special', '120.00', '', 'Delight your beloved with this \"Beary Special\" bag of love where sweet-faced 100cm Cream Fat Faced Bear delivers a dose of sunshine with 5 Easter Lilies, 3 Sunflowers and Million Stars.', 'images/product/FY1112/HSM114.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('707', '-1', '1', 'HSM115', 'Beary Dreamy', '100.00', '', '\"Beary Dreamy\" make the best expression of love for the girl of your dreams! 60cm Ice-Cream Sit Bear paired with 6 Tulips and Statices delivering a touch of romantism!', 'images/product/FY1112/HSM115.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('708', '-1', '1', 'HSM116', 'Beary Sunny', '100.00', '', 'The feeling of love can be expressed in many ways so why restrict to words? Let \"Beary Sunny\" consisting 75cm Big Loving Bear and cheery Sunflowers do the job!', 'images/product/FY1112/HSM116.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('709', '-1', '1', 'HSM117', 'Say I Love You', '120.00', '', 'Make her fall in love all over again with \"Just Want To Say I Love You\"! She will feel so in love to receive beautiful bouquet of 6 Bandung Pink Roses, Mini Roses, Eustomas and Million Stars topped with a Me to You 8cm Love Cushion Tatty Teddy Key Chain.', 'images/product/FY1112/HSM117.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('710', '-1', '1', 'HSM118', 'Be With You', '120.00', '', 'Romance her all over with \"Just Want To be With You! She will simply love this 12cm Me to You \"Love\" Cushion Tatty Teddy and Lindt Milk Chocolate Gift Box 112g paired with a lovely bouquet of Mini Roses, Million Stars and Statices on a Metal Mini Swing.', 'images/product/FY1112/HSM118.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('711', '-1', '1', 'HIM010', 'Lovely Miss Bunny', '100.00', '', 'Delightful addition to your gift set: FREE 6 pcs X Pink Heart-Shaped Helium Balloons\r\n.100cm Beauty Rabbit\r\n.Sweet Bouquet of 3 Maria Roses, 6 Bandung Roses & Eustomas\r\n.FREE 6 pcs X Pink Heart-Shaped Helium Balloons\r\nOriginal Price: $120.00', 'images/product/711.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', 'Delightful addition to your gift set: FREE 6 pcs X Pink Heart-Shaped Helium Balloons\r\n.100cm Beauty Rabbit\r\n.Sweet Bouquet of 3 Maria Roses, 6 Bandung Roses & Eustomas\r\n.FREE 6 pcs X Pink Heart-Shaped Helium Balloons\r\nOriginal Price: $120.00', 'F13', '1', 'I', '0.00', '1');
INSERT INTO `tbl_product` VALUES ('712', '-1', '1', 'HIM011', 'Beary Romantic', '60.00', '', 'Delightful addition to your gift set: FREE 6pcs X Purple Heart-Shaped Helium Balloons\n.60cm Ice-Cream Sit Bear\n.Bouquet of 6 Tulips and Statices\n.FREE 6pcs X Purple Heart-Shaped Helium Balloons\nOriginal Price: $120.00', 'images/product/FY1112/HIM011.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('713', '-1', '1', 'HIM012', 'Beary Dreamy', '100.00', '', 'Delightful addition to your gift set: FREE 6pcs X Purple Heart-Shaped Helium Balloons\n.60cm Ice-Cream Sit Bear\n.Bouquet of 6 Tulips and Statices\n.FREE 6pcs X Purple Heart-Shaped Helium Balloons\nOriginal Price: $120.00', 'images/product/FY1112/HIM012.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('714', '-1', '1', 'HIM013', 'Love Sentiments', '50.00', '', 'Delightful addition to your gift set: FREE Lindt Lindor Milk Chocolate Gift Box 112g\n.25cm Mable Bear with Heart Cushion (for putting Handphone)\n.Sweet Mini Roses in wine glass\n.FREE Lindt Lindor Milk Chocolate Gift Box 112g\nOriginal Price: $60', 'images/product/FY1112/HIM013.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('715', '-1', '1', 'HIM014', 'Love Bunny', '60.00', '', 'Delightful additions to your gift set: FREE 2 pcs USA Coten Photo Frame!\n.30cm Princess Rabbit\n.Milton Assortment Milk Chocolate 150g\n.Sweet Topiary of Mini Roses and Million Stars\n.FREE 2 pcs USA Coten Photo Frame\nOriginal Price: $70', 'images/product/FY1112/HIM014.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('716', '-1', '1', 'HIM015', 'Sweet Birthday Wishes', '85.00', '', 'Delightful addition to your gift set: FREE 30cm classic white bear!\n.1/2kg Eatzi Gourmet Cake (Strawberry Delight)\n.Sweet Roses Bouquet\n.FREE 30cm Classic White Bear\nOriginal Price: $100', 'images/product/FY1112/HIM015.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('717', '-1', '1', 'HIM016', 'Vine Joy', '65.00', '', 'Delightful addition to your gift set: A FREE box of Ferrero Rocher!\n.Chateau Barrail Des Moines Red Wine 75cl\n.Sunny Sunflowers\n.FREE Ferrero Rocher Chocolate 200g\nOriginal Price: $75', 'images/product/FY1112/HIM016.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('718', '-1', '1', 'HIM017', 'Crystal Passion', '110.00', '', 'Delightful addition to your gift set: A FREE box of Golden Bonbon Nougat!\n.Charms Popular Pink Flower Ring with adjustable Band (925 Silver)\n.3 Super Passionate Roses, Mini Roses and Million Stars in Crystal Cocktail Glass\n.FREE Golden Bonbon Cranberry Nougat 200g\nOriginal Price: $125', 'images/product/FY1112/HIM017.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('719', '-1', '1', 'HIM019', 'Floral Candies', '85.00', '', 'Delightful addition to your gift set: A FREE 10cm \"I Love Mummy\" Bear!\n.Stylish arrangement of 6 Delicate Tulips, Sweet Mini Roses, Hydrangeas and Million Stars in Designer Gourmet Porcelain Dish Plate.\n.FREE 10cm \"I Love Mummy\" Bear\nOriginal Price: $90', 'images/product/FY1112/HIM019.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');
INSERT INTO `tbl_product` VALUES ('720', '-1', '1', 'HIM020', 'Vintage\'s Passion', '80.00', '', 'Delightful addition to your gift set: A FREE Travel Shaver!\n.Chateau Haut-Mondain Bordeaux Red Wine 75cl\n.Brown & Haley Almond Roca 140g\n.3 Fragrant Matthiolas Spray and 6 Passionate Super Red Roses in Laser Crafted Wooden Planter\n.FREE Travel Shaver\nOriginal Price: $100', 'images/product/FY1112/HIM020.jpg', '0', '0', '0', '0', '1', '0', '0000-00-00', '0000-00-00', '1', '', '', '', 'F13', '1', 'I', '0.00', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_addon_link
-- ----------------------------
INSERT INTO `tbl_product_addon_link` VALUES ('11', '1', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('12', '1', '5', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('13', '3', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('14', '3', '5', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('16', '277', '4', '50');
INSERT INTO `tbl_product_addon_link` VALUES ('17', '277', '5', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category
-- ----------------------------
INSERT INTO `tbl_product_category` VALUES ('201', '1', '', '0', 'Categories', '', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('202', '2', '', '0', 'Occasions', 'images/category/202.jpg', '', '1', '500', '1');
INSERT INTO `tbl_product_category` VALUES ('207', '1', '', '0', 'Help Me Find A Gift', '', '', '1', '501', '1');
INSERT INTO `tbl_product_category` VALUES ('208', '2', '', '202', 'Admin Professional Week', 'images/category/208.jpg', '', '1', '1', '1');
INSERT INTO `tbl_product_category` VALUES ('215', '1', '', '0', 'Highlights', 'images/category/215.jpg', '', '1', '700', '1');
INSERT INTO `tbl_product_category` VALUES ('216', '3', '', '215', 'Designer&#39;s Pick', 'images/category/216.jpg', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('217', '3', '', '215', 'Deal of The Week', 'images/category/217.jpg', '', '1', '50', '1');
INSERT INTO `tbl_product_category` VALUES ('219', '3', '', '215', 'Best Sellers', 'images/category/219.jpg', '', '1', '50', '1');
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
INSERT INTO `tbl_product_category` VALUES ('232', '1', '', '201', 'Congratulatory Banner', 'images/category/232.jpg', '', '1', '50', '0');
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
INSERT INTO `tbl_product_category` VALUES ('246', '2', 'FD', '202', 'Father&#39;s Day', 'images/category/246.jpg', '', '1', '8', '0');
INSERT INTO `tbl_product_category` VALUES ('247', '2', '', '202', 'Teacher&#39;s Day', 'images/category/247.jpg', '', '1', '10', '0');
INSERT INTO `tbl_product_category` VALUES ('248', '1', '', '219', 'Opening (Best Sellers)', 'images/category/248.jpg', '', '1', '1', '0');
INSERT INTO `tbl_product_category` VALUES ('250', '1', '', '219', 'Newborns (Best Sellers)', 'images/category/250.jpg', '', '1', '2', '0');
INSERT INTO `tbl_product_category` VALUES ('251', '1', '', '220', 'Baby Diaper Cakes', 'images/category/251.jpg', 'Introducing our Diaper Cakes selection! This contemporary way of packing the much requested diapers is bound to be a hit.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('252', '1', '', '220', 'Baby Bags', 'images/category/252.jpg', 'Preferred goodies for Mom and Baby packed in a befitting ready-to-go carrier.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('253', '1', '', '220', 'Newborn Hampers', 'images/category/253.jpg', 'Sending your warmest congratulations on the birth of a bundle of joy!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('254', '1', '', '220', 'Toddlers Favourites', 'images/category/254.jpg', 'Babies grow up so quickly and we have just the gift for them as they start to develop their motor skills.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('255', '1', '', '222', 'Birthday Cakes', 'images/category/255.jpg', 'Delectable cake choices from Eatzi Gourmet! Includes choices of Mango Cheese, American Cheese, Chocolate Mint and Strawberry Delight (0.5kg or 1kg)', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('256', '1', '', '222', 'Birthday For Ladies', 'images/category/256.jpg', 'Impress her with these pretty gifts. Humming makes it easy for you to pamper and indulge her on this special day.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('257', '1', '', '222', 'Birthday For Men', 'images/category/257.jpg', 'Classy gifts that exude charm and masculinity. Surprise your man with a Humming gift today!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('258', '1', '', '231', 'Metal Stands', 'images/category/258.jpg', 'Throughout the decades metal stands have been one of the most traditional forms of congratulatory floral stands. While embracing this traditional favourite, Humming always injects surprises through our creative use of flowers and decorations!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('259', '1', '', '231', 'Congratulation Arch', 'images/category/259.jpg', 'Congratulation Arches are so lively and attractive they take centre stage at every grand opening.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('260', '1', '', '231', 'Customised Floral Arch', 'images/category/260.jpg', 'Commemorate the special event with Humming&#39;s show-stealing digitally customised banner floral stand. Corporate logos and pictures can be included too. Please provide us images (min 200 dpi) at least one working day in advance.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('261', '1', '', '231', 'Pedestal Stand', 'images/category/261.jpg', 'Eye-catching floral pedestals that exude congratulations with elegant simplicity.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('262', '1', '', '231', 'Prosperity Range', 'images/category/262.jpg', 'In the Wang! Wang! Proseprity Range, we are ready to grace the doors of any new establishment and usher in big fortunes.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('263', '1', '', '231', 'Box Stand (Fabric Designs)', 'images/category/263.jpg', 'Dressed with a soft flowy fabric that complements the choice of flowers used and adds a classy touch to your congratulatory message. You will definitely be spolit for choice!', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('265', '1', '', '231', 'Fatt! Fatt! Fatt! Range', 'images/category/265.jpg', 'Fatt! Fatt! Fatt! range is designed to impress and start businesses on the right note.', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('281', '1', '', '237', 'Condolences Scrolls', 'images/category/281.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('282', '1', '', '237', 'Condolences Comforter/ Blankets', 'images/category/282.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('283', '3', '', '215', 'Addon', '', '', '0', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('284', '1', '', '236', 'Plants', 'images/category/284.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('285', '1', '', '236', 'Personalized', 'images/category/285.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('286', '1', '', '236', 'Box Stands', 'images/category/286.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('287', '1', '', '236', 'Crosses', 'images/category/287.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('288', '1', '', '236', 'Wreath Ring', 'images/category/288.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('289', '1', '', '236', 'Multi-Tier Metal Stands', 'images/category/289.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('290', '1', '', '236', 'Blanket Floral Stands', 'images/category/290.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('291', '1', '', '236', 'Others', 'images/category/291.jpg', '', '1', '50', '0');
INSERT INTO `tbl_product_category` VALUES ('292', '1', '', '219', 'Hand Bouquets (Best Sellers)', 'images/category/292.jpg', '', '1', '3', '0');
INSERT INTO `tbl_product_category` VALUES ('293', '1', '', '201', 'Online Specials', '', '', '0', '50', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_category_link
-- ----------------------------
INSERT INTO `tbl_product_category_link` VALUES ('1287', '4', '283', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4049', '300', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4050', '301', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4051', '302', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4052', '303', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4053', '304', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4054', '305', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4055', '306', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4056', '307', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4057', '308', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4058', '309', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4059', '310', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4060', '311', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4061', '312', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4062', '313', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4063', '314', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4064', '315', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4065', '316', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4066', '317', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4067', '318', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4068', '319', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4069', '320', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4070', '321', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4071', '322', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4072', '323', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4073', '324', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4074', '325', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4075', '326', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4076', '327', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4077', '328', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4078', '329', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4079', '330', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4080', '331', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4081', '332', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4082', '333', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4083', '334', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4084', '335', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4085', '336', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4086', '337', '228', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4087', '144', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4088', '144', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4089', '144', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4090', '145', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4091', '145', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4092', '145', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4093', '146', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4094', '146', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4095', '146', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4096', '146', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4097', '147', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4098', '147', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4099', '147', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4100', '147', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4101', '148', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4102', '148', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4103', '148', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4104', '149', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4105', '149', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4106', '149', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4107', '150', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4108', '150', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4109', '150', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4110', '151', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4111', '151', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4112', '151', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4113', '152', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4114', '152', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4115', '152', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4116', '153', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4117', '153', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4118', '153', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4119', '153', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4120', '154', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4121', '154', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4122', '154', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4123', '154', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4124', '155', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4125', '155', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4126', '155', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4127', '156', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4128', '156', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4129', '156', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4130', '157', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4131', '157', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4132', '157', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4133', '158', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4134', '158', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4135', '158', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4136', '159', '255', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4137', '159', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4138', '159', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4139', '160', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4140', '160', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4141', '160', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4142', '160', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4143', '160', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4144', '160', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4145', '161', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4146', '161', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4147', '161', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4148', '161', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4149', '161', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4150', '162', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4151', '162', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4152', '162', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4153', '162', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4154', '162', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4155', '163', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4156', '163', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4157', '163', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4158', '163', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4159', '163', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4160', '163', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4161', '164', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4162', '164', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4163', '164', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4164', '164', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4165', '164', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4166', '165', '222', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4167', '165', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4168', '165', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4169', '166', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4170', '166', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4171', '166', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4172', '166', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4173', '167', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4174', '167', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4175', '167', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4176', '167', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4177', '167', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4178', '168', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4179', '168', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4180', '168', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4181', '168', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4182', '169', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4183', '169', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4184', '169', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4185', '169', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4186', '170', '256', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4187', '170', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4188', '170', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4189', '170', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4190', '171', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4191', '171', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4192', '172', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4193', '172', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4194', '173', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4195', '173', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4196', '696', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4197', '696', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4198', '175', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4199', '175', '257', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4200', '430', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4201', '431', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4202', '432', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4203', '433', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4204', '434', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4205', '435', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4206', '436', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4207', '437', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4208', '253', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4209', '253', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4210', '29', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4211', '29', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4212', '254', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4213', '254', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4214', '255', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4215', '255', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4216', '30', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4217', '30', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4218', '256', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4219', '256', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4220', '31', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4221', '31', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4222', '257', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4223', '257', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4224', '258', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4225', '258', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4226', '259', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4227', '259', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4228', '260', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4229', '260', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4230', '261', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4231', '261', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4232', '262', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4233', '262', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4234', '263', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4235', '263', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4236', '32', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4237', '32', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4238', '264', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4239', '264', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4240', '265', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4241', '265', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4242', '266', '226', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4243', '266', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4244', '457', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4245', '458', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4246', '459', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4247', '460', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4248', '461', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4249', '462', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4250', '463', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4251', '463', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4252', '463', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4253', '464', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4254', '464', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4255', '464', '219', '5');
INSERT INTO `tbl_product_category_link` VALUES ('4256', '465', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4257', '465', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4258', '466', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4259', '466', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4260', '467', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4261', '468', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4262', '469', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4263', '469', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4264', '470', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4265', '471', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4266', '471', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4267', '472', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4268', '473', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4269', '474', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4270', '475', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4271', '476', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4272', '477', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4273', '478', '234', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4274', '338', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4275', '338', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4276', '339', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4277', '340', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4278', '341', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4279', '342', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4280', '343', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4281', '343', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4282', '344', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4283', '345', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4284', '345', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4285', '345', '219', '1');
INSERT INTO `tbl_product_category_link` VALUES ('4286', '346', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4287', '347', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4288', '348', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4289', '349', '258', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4290', '350', '259', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4291', '18', '259', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4292', '351', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4293', '352', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4294', '353', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4295', '354', '260', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4296', '355', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4297', '356', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4298', '357', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4299', '358', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4300', '359', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4301', '15', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4302', '360', '261', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4303', '361', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4304', '362', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4305', '363', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4306', '16', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4307', '364', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4308', '365', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4309', '366', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4310', '367', '262', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4311', '368', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4312', '369', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4313', '369', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4314', '370', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4315', '371', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4316', '372', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4317', '373', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4318', '373', '248', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4319', '374', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4320', '17', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4321', '375', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4322', '376', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4323', '377', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4324', '378', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4325', '379', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4326', '380', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4327', '381', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4328', '382', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4329', '383', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4330', '384', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4331', '385', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4332', '386', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4333', '387', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4334', '19', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4335', '388', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4336', '389', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4337', '390', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4338', '391', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4339', '392', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4340', '393', '231', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4341', '394', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4342', '395', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4343', '396', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4344', '397', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4345', '398', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4346', '399', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4347', '404', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4348', '400', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4349', '401', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4350', '402', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4351', '403', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4352', '405', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4353', '406', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4354', '407', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4355', '408', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4356', '409', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4357', '410', '263', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4358', '411', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4359', '412', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4360', '413', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4361', '414', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4362', '415', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4363', '416', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4364', '417', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4365', '418', '265', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4366', '125', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4367', '125', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4368', '125', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4369', '125', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4370', '125', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4371', '125', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4372', '126', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4373', '126', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4374', '126', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4375', '126', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4376', '126', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4377', '127', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4378', '127', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4379', '127', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4380', '127', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4381', '128', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4382', '128', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4383', '128', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4384', '128', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4385', '13', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4386', '13', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4387', '13', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4388', '13', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4389', '13', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4390', '13', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4391', '13', '292', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4392', '129', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4393', '129', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4394', '129', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4395', '129', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4396', '130', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4397', '130', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4398', '130', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4399', '130', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4400', '130', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4401', '131', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4402', '131', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4403', '131', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4404', '131', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4405', '131', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4406', '131', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4407', '131', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4408', '132', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4409', '132', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4410', '132', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4411', '132', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4412', '132', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4413', '133', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4414', '133', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4415', '133', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4416', '133', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4417', '133', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4418', '133', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4419', '134', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4420', '134', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4421', '134', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4422', '134', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4423', '134', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4424', '135', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4425', '135', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4426', '135', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4427', '135', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4428', '136', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4429', '136', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4430', '136', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4431', '136', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4432', '136', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4433', '12', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4434', '12', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4435', '12', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4436', '12', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4437', '12', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4438', '12', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4439', '12', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4440', '137', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4441', '137', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4442', '137', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4443', '137', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4444', '137', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4445', '137', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4446', '137', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4447', '137', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4448', '137', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4449', '11', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4450', '11', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4451', '11', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4452', '11', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4453', '11', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4454', '11', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4455', '11', '292', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4456', '690', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4457', '690', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4458', '690', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4459', '690', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4460', '690', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4461', '690', '292', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4462', '138', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4463', '138', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4464', '138', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4465', '138', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4466', '138', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4467', '138', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4468', '139', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4469', '139', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4470', '139', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4471', '139', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4472', '139', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4473', '139', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4474', '139', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4475', '139', '292', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4476', '139', '216', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4477', '140', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4478', '140', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4479', '140', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4480', '140', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4481', '141', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4482', '141', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4483', '141', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4484', '141', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4485', '141', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4486', '142', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4487', '142', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4488', '142', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4489', '143', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4490', '143', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4491', '143', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4492', '143', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4493', '14', '221', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4494', '14', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4495', '14', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4496', '14', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4497', '14', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4498', '14', '219', '3');
INSERT INTO `tbl_product_category_link` VALUES ('4499', '14', '292', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4500', '33', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4501', '34', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4502', '35', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4503', '36', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4504', '24', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4505', '37', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4506', '38', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4507', '39', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4508', '40', '251', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4509', '41', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4510', '42', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4511', '43', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4512', '25', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4513', '44', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4514', '45', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4515', '46', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4516', '47', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4517', '48', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4518', '49', '252', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4519', '50', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4520', '51', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4521', '52', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4522', '52', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4523', '53', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4524', '691', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4525', '692', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4526', '693', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4527', '694', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4528', '54', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4529', '55', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4530', '56', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4531', '57', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4532', '58', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4533', '59', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4534', '60', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4535', '61', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4536', '62', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4537', '63', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4538', '64', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4539', '65', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4540', '66', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4541', '67', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4542', '68', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4543', '69', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4544', '70', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4545', '71', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4546', '72', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4547', '73', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4548', '74', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4549', '75', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4550', '76', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4551', '77', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4552', '695', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4553', '78', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4554', '79', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4555', '80', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4556', '81', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4557', '82', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4558', '83', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4559', '84', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4560', '85', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4561', '85', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4562', '86', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4563', '87', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4564', '88', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4565', '89', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4566', '90', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4567', '91', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4568', '92', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4569', '92', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4570', '92', '219', '2');
INSERT INTO `tbl_product_category_link` VALUES ('4571', '93', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4572', '94', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4573', '95', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4574', '95', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4575', '96', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4576', '96', '250', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4577', '97', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4578', '98', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4579', '99', '253', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4580', '100', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4581', '101', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4582', '102', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4583', '27', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4584', '103', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4585', '104', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4586', '105', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4587', '106', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4588', '107', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4589', '108', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4590', '109', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4591', '110', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4592', '111', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4593', '112', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4594', '113', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4595', '114', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4596', '28', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4597', '115', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4598', '116', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4599', '117', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4600', '118', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4601', '119', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4602', '120', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4603', '121', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4604', '122', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4605', '123', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4606', '124', '254', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4607', '419', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4608', '420', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4609', '421', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4610', '422', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4611', '423', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4612', '424', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4613', '425', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4614', '426', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4615', '427', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4616', '428', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4617', '429', '232', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4618', '267', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4619', '267', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4620', '268', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4621', '268', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4622', '268', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4623', '268', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4624', '21', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4625', '21', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4626', '21', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4627', '21', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4628', '21', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4629', '269', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4630', '269', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4631', '269', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4632', '270', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4633', '270', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4634', '271', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4635', '271', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4636', '272', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4637', '273', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4638', '274', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4639', '274', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4640', '274', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4641', '7', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4642', '7', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4643', '7', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4644', '7', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4645', '275', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4646', '275', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4647', '276', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4648', '276', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4649', '276', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4650', '277', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4651', '277', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4652', '277', '219', '4');
INSERT INTO `tbl_product_category_link` VALUES ('4653', '278', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4654', '279', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4655', '279', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4656', '279', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4657', '279', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4658', '280', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4659', '281', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4660', '281', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4661', '20', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4662', '282', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4663', '282', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4664', '283', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4665', '283', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4666', '283', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4667', '284', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4668', '284', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4669', '284', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4670', '23', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4671', '23', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4672', '285', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4673', '286', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4674', '286', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4675', '286', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4676', '287', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4677', '287', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4678', '288', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4679', '288', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4680', '288', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4681', '289', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4682', '289', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4683', '289', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4684', '290', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4685', '290', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4686', '291', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4687', '291', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4688', '292', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4689', '292', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4690', '293', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4691', '293', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4692', '294', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4693', '294', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4694', '294', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4695', '295', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4696', '295', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4697', '295', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4698', '295', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4699', '296', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4700', '296', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4701', '297', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4702', '297', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4703', '297', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4704', '22', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4705', '22', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4706', '22', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4707', '298', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4708', '298', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4709', '298', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4710', '299', '227', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4711', '299', '241', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4712', '176', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4713', '176', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4714', '176', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4715', '177', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4716', '177', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4717', '177', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4718', '177', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4719', '697', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4720', '697', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4721', '697', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4722', '698', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4723', '698', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4724', '698', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4725', '180', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4726', '180', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4727', '180', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4728', '180', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4729', '699', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4730', '699', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4731', '700', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4732', '700', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4733', '701', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4734', '701', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4735', '702', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4736', '702', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4737', '702', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4738', '703', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4739', '703', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4740', '186', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4741', '186', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4742', '186', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4743', '186', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4744', '704', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4745', '704', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4746', '704', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4747', '705', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4748', '705', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4749', '706', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4750', '706', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4751', '706', '247', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4752', '707', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4753', '707', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4754', '707', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4755', '707', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4756', '708', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4757', '708', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4758', '708', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4759', '709', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4760', '709', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4761', '709', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4762', '710', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4763', '710', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4764', '710', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4765', '194', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4766', '194', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4767', '194', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4768', '194', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4769', '195', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4770', '195', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4771', '195', '244', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4772', '196', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4773', '196', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4774', '197', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4775', '197', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4776', '198', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4777', '198', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4778', '199', '223', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4779', '199', '243', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4780', '479', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4781', '480', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4782', '481', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4783', '482', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4784', '483', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4785', '484', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4786', '485', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4787', '486', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4788', '487', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4789', '488', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4790', '489', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4791', '490', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4792', '491', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4793', '492', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4794', '493', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4795', '494', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4796', '495', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4797', '496', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4798', '497', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4799', '498', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4800', '499', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4801', '500', '235', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4802', '633', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4803', '634', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4804', '635', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4805', '636', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4806', '637', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4807', '638', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4808', '639', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4809', '640', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4810', '641', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4811', '642', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4812', '643', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4813', '644', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4814', '645', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4815', '646', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4816', '647', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4817', '648', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4818', '649', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4819', '650', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4820', '651', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4821', '652', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4822', '653', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4823', '654', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4824', '655', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4825', '656', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4826', '657', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4827', '658', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4828', '659', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4829', '660', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4830', '661', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4831', '662', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4832', '663', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4833', '664', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4834', '665', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4835', '666', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4836', '667', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4837', '668', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4838', '669', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4839', '670', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4840', '671', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4841', '672', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4842', '673', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4843', '674', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4844', '675', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4845', '676', '281', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4846', '677', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4847', '678', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4848', '679', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4849', '680', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4850', '681', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4851', '682', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4852', '683', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4853', '684', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4854', '685', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4855', '686', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4856', '687', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4857', '688', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4858', '689', '282', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4859', '200', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4860', '201', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4861', '202', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4862', '203', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4863', '204', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4864', '204', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4865', '205', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4866', '206', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4867', '207', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4868', '207', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4869', '208', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4870', '209', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4871', '209', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4872', '210', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4873', '210', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4874', '211', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4875', '212', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4876', '213', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4877', '214', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4878', '214', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4879', '215', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4880', '216', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4881', '217', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4882', '218', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4883', '219', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4884', '220', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4885', '221', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4886', '222', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4887', '223', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4888', '223', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4889', '224', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4890', '224', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4891', '225', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4892', '226', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4893', '227', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4894', '227', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4895', '228', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4896', '229', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4897', '229', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4898', '230', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4899', '230', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4900', '231', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4901', '231', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4902', '232', '224', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4903', '232', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4904', '438', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4905', '438', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4906', '438', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4907', '439', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4908', '439', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4909', '440', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4910', '440', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4911', '441', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4912', '442', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4913', '442', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4914', '443', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4915', '444', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4916', '444', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4917', '445', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4918', '446', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4919', '447', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4920', '448', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4921', '449', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4922', '450', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4923', '450', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4924', '451', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4925', '451', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4926', '451', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4927', '452', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4928', '452', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4929', '453', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4930', '454', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4931', '454', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4932', '455', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4933', '455', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4934', '455', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4935', '456', '233', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4936', '233', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4937', '233', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4938', '233', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4939', '233', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4940', '234', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4941', '234', '208', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4942', '234', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4943', '234', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4944', '235', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4945', '235', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4946', '235', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4947', '236', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4948', '236', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4949', '237', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4950', '238', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4951', '238', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4952', '238', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4953', '238', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4954', '238', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4955', '239', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4956', '239', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4957', '240', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4958', '241', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4959', '241', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4960', '241', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4961', '242', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4962', '242', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4963', '242', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4964', '243', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4965', '243', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4966', '243', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4967', '244', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4968', '244', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4969', '245', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4970', '245', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4971', '245', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4972', '246', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4973', '246', '239', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4974', '246', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4975', '247', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4976', '247', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4977', '248', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4978', '248', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4979', '248', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4980', '249', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4981', '249', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4982', '250', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4983', '250', '240', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4984', '250', '245', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4985', '250', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4986', '251', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4987', '251', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4988', '251', '246', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4989', '252', '225', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4990', '252', '238', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4991', '252', '242', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4992', '501', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4993', '502', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4994', '503', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4995', '504', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4996', '505', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4997', '506', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4998', '507', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('4999', '508', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5000', '509', '284', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5001', '510', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5002', '511', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5003', '512', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5004', '513', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5005', '514', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5006', '515', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5007', '516', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5008', '517', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5009', '518', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5010', '519', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5011', '520', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5012', '521', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5013', '522', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5014', '523', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5015', '524', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5016', '525', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5017', '526', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5018', '527', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5019', '528', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5020', '529', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5021', '530', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5022', '531', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5023', '532', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5024', '533', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5025', '534', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5026', '535', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5027', '536', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5028', '537', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5029', '538', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5030', '539', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5031', '540', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5032', '541', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5033', '542', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5034', '543', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5035', '544', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5036', '545', '287', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5037', '546', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5038', '547', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5039', '548', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5040', '549', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5041', '550', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5042', '551', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5043', '552', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5044', '553', '288', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5045', '554', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5046', '555', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5047', '556', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5048', '557', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5049', '558', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5050', '559', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5051', '560', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5052', '561', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5053', '562', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5054', '563', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5055', '564', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5056', '565', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5057', '566', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5058', '567', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5059', '568', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5060', '569', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5061', '570', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5062', '571', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5063', '572', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5064', '573', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5065', '574', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5066', '575', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5067', '576', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5068', '577', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5069', '578', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5070', '579', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5071', '580', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5072', '581', '289', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5073', '582', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5074', '583', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5075', '584', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5076', '585', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5077', '586', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5078', '587', '290', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5079', '588', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5080', '589', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5081', '590', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5082', '591', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5083', '592', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5084', '593', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5085', '594', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5086', '595', '291', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5087', '596', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5088', '597', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5089', '598', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5090', '599', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5091', '600', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5092', '601', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5093', '602', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5094', '603', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5095', '604', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5096', '605', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5097', '606', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5098', '607', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5099', '608', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5100', '609', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5101', '610', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5102', '611', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5103', '612', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5104', '613', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5105', '614', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5106', '615', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5107', '616', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5108', '617', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5109', '618', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5110', '619', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5111', '620', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5112', '621', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5113', '622', '286', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5114', '623', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5115', '626', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5116', '627', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5117', '628', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5118', '629', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5119', '630', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5120', '631', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5121', '632', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5122', '624', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5123', '625', '285', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5124', '711', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5125', '712', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5126', '713', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5127', '714', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5128', '715', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5129', '716', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5130', '717', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5131', '718', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5132', '719', '293', '50');
INSERT INTO `tbl_product_category_link` VALUES ('5133', '720', '293', '50');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_product_related_link
-- ----------------------------
INSERT INTO `tbl_product_related_link` VALUES ('12', '1', '3', '50');
INSERT INTO `tbl_product_related_link` VALUES ('18', '3', '1', '50');
INSERT INTO `tbl_product_related_link` VALUES ('19', '3', '7', '50');
INSERT INTO `tbl_product_related_link` VALUES ('20', '3', '16', '50');
INSERT INTO `tbl_product_related_link` VALUES ('21', '277', '7', '50');
INSERT INTO `tbl_product_related_link` VALUES ('22', '277', '11', '50');

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
INSERT INTO `tbl_running_number` VALUES ('1', '155', '0', '0', '0', '0', '0', '23');

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
  `customer_industry_type` varchar(10) NOT NULL default 'UNSP',
  `payment_terms` varchar(10) NOT NULL default 'CC',
  `customer_group` varchar(2) NOT NULL default '1',
  `tax_code` varchar(2) NOT NULL default '1',
  `sold_to_party_no` varchar(10) NOT NULL,
  `contact_person_code` varchar(11) NOT NULL,
  `ssid` varchar(4) NOT NULL default 'IM6',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'Mr', 'Ming Liang', 'Lee ', 'DW&#39;E', '2192', '#10-605', 'Building ACE&#39;s', 'Jurong East St 21', '', '', '', '300001', 'SG', 'state', 'SG', 'mingliang@ua-consultants.com', '218ee2aa3a1bce98a6016d5aba186029', '65', '0', '96938443', '', '', '', '', '', '96938443', '1', '1981-07-17', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('3', 'Mr', 'Lee Ming Liang', '', 'DWE', '219', '#10-605', '', 'Jurong East St 21', '', '', '', '600219', '', '', 'SG', 'brightleee@hotmail.com', '1d02d56dd360b43dc9d8a801fbded37f', '', '', '', '', '', '', '', '', '', '0', '1981-07-17', '1', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('6', 'Mr', 'Ali', '', 'Far East Florist', '12', '05-123', 'Far East Building', '123465, FEB', '', '', '', '123465', '', '', 'SG', 'ali@ali.com', 'e99a18c428cb38d5f260853678922e03', '', '', '654321001', '', '', '654321001', '', '', '654321001', '2', '1981-07-17', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('7', 'Mrs', 'dfsf', '', '', '', '', '', '', '', '', '', '334343', '', '', 'SG', 'Test@noel.com.sg', 'e99a18c428cb38d5f260853678922e03', '', '', '456453', '', '', '', '', '', '', '0', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('8', 'Mr', 'tester', '', 'tester', '123', '123', '123', '123', '123', '123', '123', '123456', 'singapore', '', 'SG', 'info@ua-solutions.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '123', '', '', '123', '', '', '123', 'Ma', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('9', 'Mrs', 'Anh Nguyen', '', 'Ua-consultant', '1', '1', '1', 'Nguyen Van Linh', '', '', '', '123456', 'HCM', '', 'VN', 'abc@abc.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0917103290', '', '', '', '', '', '', 'Fe', '1982-03-04', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'lee@dweb2.com.sg', 'e99a18c428cb38d5f260853678922e03', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('30', 'Ms', '', '', '', '', '', '', '4444', '', '', '', '4444', '', '', '', 'ssss@rddd.com', 'e99a18c428cb38d5f260853678922e03', '', '', '44747', '', '', '', '', '', '', ' ', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'lee@dweb.com.sg', '218ee2aa3a1bce98a6016d5aba186029', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('33', 'Mr', 'murugan', 'Bala', 'Noel Gifts International Ltd', 'blk 50', '#02-03', 'noel building', 'tai seng drive 3', '', '', '', '535218', '', '', 'SG', 'bala@noel.com.sg', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '97203694', '', '', '64103023', '', '', '', '1', '1982-12-10', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('34', 'Mr', 'vinoth', 'Palanisamy', 'Noel gifts', 'Blk 227', '#10-399', '', 'petir road', '', '', '', '670217', '', '', 'SG', 'vino@noel.com.sg', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '81193544', '', '', '', '', '', '', '1', '1988-07-16', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('35', 'Mr', '', '', 'monkey company', 'blk 293', '#01-11', 'snake bulding', 'goat street', '', '', '', '012122', 'vellore', '', 'sna', 'dbala2004@gmail.com', 'e99a18c428cb38d5f260853678922e03', '', '', '8992923', '', '', '2399399', '', '', '', ' ', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('36', 'Mr', 'kumar', 'sathish', 'standard charted', 'blk 543', '987', 'pending', 'pending', '', '', '', '6754909', '', '', 'SG', 'vinoth_167@yahoo.co.in', '557086f5528c8b8395f5a7a022e3322f', '', '', '23454765', '', '', '34668769', '', '', '', '1', '1987-04-12', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('37', 'Mr', 'akill', 'madhu', 'segers', '234', '3433-232', 'tei seigh', 'north srt', '', '', '', '2342323', '', '', 'SG', 'madhuakill@gmail.com', '84811fed582a9c7b8cb41f68f0ed6147', '', '', '32568987', '', '', '56475868', '', '', '', '2', '1977-11-21', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('38', 'Mr', 'kumar', 'rajesh', 'sona', 'blk23', '213-233', 'road side', 'red', '', '', '', '235454', '', '', 'SG', 'satheesh.manoharan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '32453253', '', '', '32543655', '', '', '', '1', '1988-11-08', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('39', 'Mr', 'durai', 'kumar', 'durai', 'blk 12', '12-23', 'kum', 'gun', '', '', '', '232143', '', '', 'SG', 'samvarun@gmail.com', 'eadd934e2cc978fc622fc1324878d8af', '', '', '324324', '', '', '343254', '', '', '', '1', '1978-08-21', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('40', 'Mr', 'harish', 'kumar', 'kaviyan', 'blk 23', '23-23', 'chennai', 'velachery', '', '', '', '7656465', 'SG', '', 'SG', 'harish.vfx89@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '234454', '', '', '543564', '', '', '', '1', '1987-02-01', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('41', 'Mr', 'Rajesh', 'Sir', 'house', 'blk 12', '837', 'bill', 'bound', '', '', '', '5765343', 'sg', 'sg', 'SG', 'rajesh.kumar@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '23423423', '', '', '45435443', '', '', '57645345', '1', '1966-04-12', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('42', 'Mr', 'pravin', 'kumar', 'indiana', 'blk 211', '12', 'tamil', 'nadu', '', '', '', '987978', 'gu', 'ud', 'SG', 'pravin.kumar@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '23534343', '', '', '45345356', '', '', '45365642', '1', '1986-05-12', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('43', 'Mr', 'Goh', 'Tomy', '', '29', '', '', 'Belmond Road 1/12', '', '', '', '1623155', 'SG', '', 'SG', 'tomy@tomy.com', 'e10adc3949ba59abbe56e057f20f883e', '65', '', '11112222', '', '', '', '', '', '', '1', '1967-01-01', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('44', 'Ms', 'Su Yee Hong', 'Amanda', 'SASA International', '54', '#05-11', 'Peoples&#39; Park', 'China Town&#39;s Road', '', '', '', '100006', 'China Town', '', 'SG', 'test3@test.test', 'e10adc3949ba59abbe56e057f20f883e', '', '', '88881234', '', '', '', '', '', '', '2', '1988-12-10', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('45', 'Mr', 'vivian', 'Ravi', 'vivian', 'blk 12', '23', 'small', 'exchange', '', '', '', '23432', 'sg', '', 'SG', 'vinoth11@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '354245', '', '', '342342', '', '', '324234', '1', '1988-07-11', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('46', 'Mr', 'æ˜¾é¾™', 'æŽ', '', '219', '#05-05', '', 'Orchard St22', '', '', '', '111234', 'SG', '', 'SG', 'test4@test.test', 'e10adc3949ba59abbe56e057f20f883e', '', '', '88888888', '', '', '', '', '', '', '1', '1970-11-11', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('47', 'Mr', 'Obama', 'Barrack', '', '123', '#10-10', '', 'US Street', '', '', '', '100001', 'SG', '', 'SG', 'test5@test.test', 'e10adc3949ba59abbe56e057f20f883e', '', '', '12123333', '', '', '', '', '', '', '2', '1955-11-12', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('48', 'Mr', 'Bento', 'Estila Ohorma', '', '11', '#11-11', '', 'French Deu Te Nanto', '', '', '', '123456', 'SG', '', 'SG', 'test6@test.test', 'e10adc3949ba59abbe56e057f20f883e', '', '', '10101010', '', '', '', '', '', '', '2', '1988-08-08', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('49', 'Mrs', 'Akhil', 'A', 'akhila', 'blk 12', '12', 'akhila', 'akh', '', '', '', '86785', 'sg', '', 'SG', 'akhila@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '2343234', '', '', '4235234', '', '', '343443343', '2', '1988-12-12', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('50', ' ', '', '', '', '', '', '', '454544', '', '', '', 'juuii', '', '', '', 're@sss.com', 'e99a18c428cb38d5f260853678922e03', '', '', '4754545', '', '', '', '', '', '', ' ', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('51', 'Ms', '', '', '', '', '', '', 'gfgfg', '', '', '', 'hjjgjghj', '', '', '', 'dsda@dda.com', 'e99a18c428cb38d5f260853678922e03', '', '', '424242', '', '', '', '', '', '', ' ', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', 'UNSP', 'CC', '1', '1', '', '', 'IM6');
INSERT INTO `tbl_user` VALUES ('59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'mingliang@ua-consultants.com', '218ee2aa3a1bce98a6016d5aba186029', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '', '02', '', '0007000059', '7000059001', 'IM6');
INSERT INTO `tbl_user` VALUES ('70', ' ', 'test', '', 'test', '', '', '', 'test', '', '', '', '70000', '', '', 'SG', 'namcohcm@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '00', '08', '88888888', '', '', '', '', '', '', '1', '1981-04-11', '0', '', '', '02', '', '0007000070', '7000070001', 'IM6');
INSERT INTO `tbl_user` VALUES ('71', 'Mr', '', '', '', '', '', '', 'test', '', '', '', '70000', '', '', '', 'namhcm2001@yahoo.com', 'e99a18c428cb38d5f260853678922e03', '', '', '88888888', '', '', '', '', '', '', ' ', '0000-00-00', '0', '', '', '02', '', '0007000071', '7000071001', 'IM6');
INSERT INTO `tbl_user` VALUES ('72', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ali@ali2.com', '218ee2aa3a1bce98a6016d5aba186029', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0', '', '', '02', '', '0007000072', '7000072001', 'IM6');
INSERT INTO `tbl_user` VALUES ('73', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e99a18c428cb38d5f260853678922e03', '', '', '', '', '', '', '', '', '', ' ', '0000-00-00', '0', '', '', '02', '', '0007000073', '7000073001', '');
INSERT INTO `tbl_user` VALUES ('74', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e99a18c428cb38d5f260853678922e03', '', '', '', '', '', '', '', '', '', ' ', '0000-00-00', '0', '', '', '02', '', '0007000074', '7000074001', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=1552 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_visitors` VALUES ('844', '180.76.5.180', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('845', '180.76.6.225', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('846', '180.76.5.138', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('847', '27.104.118.198', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('848', '27.104.118.198', '1342540800', '2');
INSERT INTO `tbl_visitors` VALUES ('849', '222.255.200.106', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('850', '180.76.5.60', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('851', '180.76.5.195', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('852', '180.76.5.57', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('853', '180.76.5.48', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('854', '180.76.6.35', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('855', '180.76.5.197', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('856', '27.104.157.174', '1342540800', '2');
INSERT INTO `tbl_visitors` VALUES ('857', '180.76.6.230', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('858', '66.249.67.17', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('859', '27.104.179.33', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('860', '180.76.6.213', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('861', '180.93.172.111', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('862', '27.104.153.55', '1342540800', '2');
INSERT INTO `tbl_visitors` VALUES ('863', '180.76.5.99', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('864', '27.104.153.55', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('865', '27.104.153.55', '1342540800', '31');
INSERT INTO `tbl_visitors` VALUES ('866', '180.76.5.92', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('867', '203.116.243.1', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('868', '103.246.38.196', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('869', '27.104.153.55', '1342540800', '32');
INSERT INTO `tbl_visitors` VALUES ('870', '180.76.5.94', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('871', '180.76.5.155', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('872', '115.42.201.18', '1342540800', '33');
INSERT INTO `tbl_visitors` VALUES ('873', '180.76.5.165', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('874', '180.76.5.166', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('875', '27.104.0.148', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('876', '180.76.5.62', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('877', '27.104.195.107', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('878', '27.104.116.209', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('879', '27.104.84.178', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('880', '180.76.6.232', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('881', '27.104.184.10', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('882', '27.104.103.218', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('883', '27.104.91.176', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('884', '218.186.10.231', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('885', '218.186.10.231', '1342540800', '34');
INSERT INTO `tbl_visitors` VALUES ('886', '180.76.5.54', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('887', '180.76.5.164', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('888', '218.186.10.231', '1342540800', '36');
INSERT INTO `tbl_visitors` VALUES ('889', '218.186.10.231', '1342540800', '37');
INSERT INTO `tbl_visitors` VALUES ('890', '218.186.10.231', '1342540800', '38');
INSERT INTO `tbl_visitors` VALUES ('891', '218.186.10.231', '1342540800', '39');
INSERT INTO `tbl_visitors` VALUES ('892', '180.76.5.146', '1342540800', '0');
INSERT INTO `tbl_visitors` VALUES ('893', '27.104.77.188', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('894', '180.76.5.160', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('895', '180.76.5.93', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('896', '27.104.77.188', '1342627200', '2');
INSERT INTO `tbl_visitors` VALUES ('897', '180.76.6.20', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('898', '27.104.116.117', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('899', '180.76.5.61', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('900', '180.76.5.48', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('901', '180.76.6.212', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('902', '1.54.8.61', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('903', '180.76.5.110', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('904', '180.76.6.231', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('905', '66.249.69.103', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('906', '180.76.5.182', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('907', '180.76.5.97', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('908', '180.76.5.173', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('909', '180.76.5.180', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('910', '180.76.5.162', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('911', '180.76.5.157', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('912', '180.76.6.26', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('913', '180.76.6.29', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('914', '180.76.5.153', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('915', '27.104.46.243', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('916', '180.76.5.51', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('917', '180.76.5.151', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('918', '180.76.5.175', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('919', '115.42.201.18', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('920', '180.76.5.56', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('921', '180.76.5.98', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('922', '222.255.200.190', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('923', '180.76.5.67', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('924', '180.76.5.192', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('925', '116.14.128.94', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('926', '180.76.5.89', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('927', '115.42.201.18', '1342627200', '40');
INSERT INTO `tbl_visitors` VALUES ('928', '203.116.243.1', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('929', '180.76.5.147', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('930', '180.76.5.166', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('931', '27.104.89.159', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('932', '180.76.5.65', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('933', '180.76.5.103', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('934', '180.76.5.90', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('935', '180.76.5.154', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('936', '222.255.200.106', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('937', '27.104.171.113', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('938', '180.76.5.100', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('939', '119.56.118.114', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('940', '180.76.5.95', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('941', '202.54.173.193', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('942', '115.42.201.18', '1342627200', '41');
INSERT INTO `tbl_visitors` VALUES ('943', '27.104.171.113', '1342627200', '2');
INSERT INTO `tbl_visitors` VALUES ('944', '27.104.233.17', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('945', '180.76.5.186', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('946', '180.76.5.137', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('947', '95.108.247.251', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('948', '180.76.5.58', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('949', '180.76.6.36', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('950', '180.76.6.35', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('951', '180.76.5.176', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('952', '180.76.5.171', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('953', '218.186.10.231', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('954', '180.76.5.99', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('955', '218.186.10.231', '1342627200', '42');
INSERT INTO `tbl_visitors` VALUES ('956', '180.76.5.49', '1342627200', '0');
INSERT INTO `tbl_visitors` VALUES ('957', '180.76.5.153', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('958', '180.76.5.89', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('959', '180.76.5.58', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('960', '180.76.5.67', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('961', '66.249.69.103', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('962', '180.76.6.28', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('963', '180.76.5.154', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('964', '180.76.5.98', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('965', '180.76.5.64', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('966', '180.76.5.61', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('967', '180.76.6.231', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('968', '180.76.5.186', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('969', '180.76.5.160', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('970', '180.76.5.144', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('971', '180.76.5.91', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('972', '180.76.5.145', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('973', '180.76.5.137', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('974', '27.104.146.57', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('975', '58.185.237.66', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('976', '115.42.201.18', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('977', '180.76.6.20', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('978', '113.10.82.19', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('979', '180.76.5.94', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('980', '222.255.200.106', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('981', '180.76.6.36', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('982', '27.104.201.230', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('983', '180.76.5.189', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('984', '180.76.5.111', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('985', '180.76.5.97', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('986', '180.76.5.141', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('987', '27.104.48.16', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('988', '27.104.48.16', '1342713600', '43');
INSERT INTO `tbl_visitors` VALUES ('989', '180.76.5.175', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('990', '113.10.97.67', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('991', '180.76.5.178', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('992', '27.104.48.16', '1342713600', '44');
INSERT INTO `tbl_visitors` VALUES ('993', '222.255.200.190', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('994', '180.76.5.172', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('995', '27.104.0.126', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('996', '180.76.5.63', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('997', '180.76.6.233', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('998', '180.76.5.65', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('999', '123.125.71.112', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1000', '180.76.5.55', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1001', '180.76.5.49', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1002', '180.76.5.50', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1003', '115.42.201.18', '1342713600', '45');
INSERT INTO `tbl_visitors` VALUES ('1004', '180.76.5.138', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1005', '27.104.48.16', '1342713600', '46');
INSERT INTO `tbl_visitors` VALUES ('1006', '27.104.48.16', '1342713600', '47');
INSERT INTO `tbl_visitors` VALUES ('1007', '27.104.48.16', '1342713600', '48');
INSERT INTO `tbl_visitors` VALUES ('1008', '180.76.5.191', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1009', '180.76.5.54', '1342713600', '0');
INSERT INTO `tbl_visitors` VALUES ('1010', '180.76.5.111', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1011', '180.76.5.93', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1012', '66.249.69.103', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1013', '180.76.6.224', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1014', '180.76.5.144', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1015', '180.76.5.92', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1016', '218.186.10.231', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1017', '218.186.10.231', '1342800000', '49');
INSERT INTO `tbl_visitors` VALUES ('1018', '180.76.5.140', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1019', '180.76.6.223', '1342800000', '0');
INSERT INTO `tbl_visitors` VALUES ('1020', '66.249.69.103', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1021', '1.54.160.225', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1022', '180.76.5.110', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1023', '66.249.67.17', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1024', '180.76.5.60', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1025', '180.76.5.180', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1026', '180.76.5.50', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1027', '180.76.5.55', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1028', '180.76.5.186', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1029', '180.76.5.145', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1030', '180.76.5.192', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1031', '38.100.21.19', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1032', '180.76.5.165', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1033', '180.76.6.227', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1034', '1.54.23.128', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1035', '180.76.5.155', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1036', '180.76.6.213', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1037', '180.76.5.92', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1038', '180.76.5.187', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1039', '175.136.37.131', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1040', '180.76.5.96', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1041', '180.76.6.21', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1042', '180.76.5.59', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1043', '180.76.5.197', '1342886400', '0');
INSERT INTO `tbl_visitors` VALUES ('1044', '180.76.6.230', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1045', '66.249.69.103', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1046', '180.76.5.63', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1047', '180.76.5.98', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1048', '14.139.121.55', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1049', '180.76.6.29', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1050', '180.76.5.172', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1051', '180.76.5.186', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1052', '180.76.5.60', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1053', '180.76.5.173', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1054', '180.76.5.156', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1055', '180.76.6.20', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1056', '180.76.5.87', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1057', '175.136.37.131', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1058', '115.42.201.18', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1059', '180.76.5.166', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1060', '180.76.5.94', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1061', '180.76.5.48', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1062', '180.76.5.100', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1063', '180.76.6.35', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1064', '27.104.73.50', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1065', '27.104.73.50', '1342972800', '44');
INSERT INTO `tbl_visitors` VALUES ('1066', '180.76.5.159', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1067', '27.104.83.193', '1342972800', '44');
INSERT INTO `tbl_visitors` VALUES ('1068', '27.104.42.11', '1342972800', '44');
INSERT INTO `tbl_visitors` VALUES ('1069', '27.104.73.50', '1342972800', '46');
INSERT INTO `tbl_visitors` VALUES ('1070', '180.76.5.56', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1071', '27.104.19.9', '1342972800', '46');
INSERT INTO `tbl_visitors` VALUES ('1072', '27.104.19.9', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1073', '27.104.19.9', '1342972800', '48');
INSERT INTO `tbl_visitors` VALUES ('1074', '27.104.42.11', '1342972800', '48');
INSERT INTO `tbl_visitors` VALUES ('1075', '27.104.19.9', '1342972800', '47');
INSERT INTO `tbl_visitors` VALUES ('1076', '27.104.19.9', '1342972800', '2');
INSERT INTO `tbl_visitors` VALUES ('1077', '180.76.5.148', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1078', '180.76.5.180', '1342972800', '0');
INSERT INTO `tbl_visitors` VALUES ('1079', '180.76.5.193', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1080', '180.76.5.57', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1081', '180.76.5.50', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1082', '202.46.62.17', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1083', '202.46.52.32', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1084', '202.46.58.33', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1085', '202.46.61.170', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1086', '202.46.58.36', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1087', '180.76.5.189', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1088', '180.76.6.21', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1089', '180.76.5.56', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1090', '180.76.5.182', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1091', '202.46.61.33', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1092', '202.46.50.187', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1093', '202.46.60.99', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1094', '202.46.59.74', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1095', '180.76.5.65', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1096', '180.76.5.165', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1097', '180.76.5.52', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1098', '180.76.6.211', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1099', '180.76.5.153', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1100', '180.76.5.111', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1101', '66.249.69.103', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1102', '180.76.5.142', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1103', '180.76.5.94', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1104', '115.42.201.18', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1105', '27.104.251.217', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1106', '222.255.200.190', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1107', '180.76.5.93', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1108', '180.76.5.140', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1109', '180.76.5.168', '1343059200', '0');
INSERT INTO `tbl_visitors` VALUES ('1110', '180.76.5.196', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1111', '180.76.6.222', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1112', '180.76.5.156', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1113', '180.76.5.53', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1114', '95.108.247.251', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1115', '66.249.69.103', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1116', '180.76.5.98', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1117', '180.76.5.88', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1118', '222.255.200.106', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1119', '124.197.125.128', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1120', '58.185.237.66', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1121', '58.185.237.66', '1343145600', '2');
INSERT INTO `tbl_visitors` VALUES ('1122', '115.42.201.18', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1123', '180.76.5.191', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1124', '49.245.134.217', '1343145600', '0');
INSERT INTO `tbl_visitors` VALUES ('1125', '49.245.134.217', '1343145600', '2');
INSERT INTO `tbl_visitors` VALUES ('1126', '49.245.134.217', '1343232000', '2');
INSERT INTO `tbl_visitors` VALUES ('1127', '180.129.127.150', '1343232000', '2');
INSERT INTO `tbl_visitors` VALUES ('1128', '180.76.5.149', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1129', '180.129.127.150', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1130', '1.54.22.10', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1131', '180.76.5.54', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1132', '218.186.10.254', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1133', '66.249.69.103', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1134', '66.249.67.17', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1135', '180.76.5.136', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1136', '180.76.5.180', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1137', '115.42.201.18', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1138', '58.185.237.66', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1139', '58.185.237.66', '1343232000', '2');
INSERT INTO `tbl_visitors` VALUES ('1140', '222.255.200.106', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1141', '218.186.10.248', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1142', '180.76.6.28', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1143', '180.129.55.175', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1144', '27.104.133.90', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1145', '27.104.251.24', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1146', '119.56.119.21', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1147', '27.104.78.163', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1148', '27.104.255.112', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1149', '27.104.236.65', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1150', '27.104.249.136', '1343232000', '0');
INSERT INTO `tbl_visitors` VALUES ('1151', '66.249.69.103', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1152', '27.104.133.90', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1153', '180.76.5.175', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1154', '27.104.133.90', '1343318400', '2');
INSERT INTO `tbl_visitors` VALUES ('1155', '66.249.67.17', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1156', '119.56.113.33', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1157', '119.56.119.139', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1158', '119.56.115.58', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1159', '115.42.201.18', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1160', '180.76.5.48', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1161', '180.76.6.37', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1162', '58.185.237.66', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1163', '27.104.27.88', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1164', '222.255.200.106', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1165', '27.104.27.88', '1343318400', '44');
INSERT INTO `tbl_visitors` VALUES ('1166', '27.104.27.88', '1343318400', '46');
INSERT INTO `tbl_visitors` VALUES ('1167', '180.76.5.153', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1168', '27.104.27.88', '1343318400', '48');
INSERT INTO `tbl_visitors` VALUES ('1169', '218.186.10.236', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1170', '27.104.245.133', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1171', '27.104.27.88', '1343318400', '2');
INSERT INTO `tbl_visitors` VALUES ('1172', '116.14.128.94', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1173', '180.76.6.35', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1174', '27.104.224.184', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1175', '95.108.247.251', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1176', '119.56.113.210', '1343318400', '2');
INSERT INTO `tbl_visitors` VALUES ('1177', '180.76.5.89', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1178', '180.76.5.63', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1179', '180.76.5.100', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1180', '180.76.5.181', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1181', '1.54.86.117', '1343318400', '0');
INSERT INTO `tbl_visitors` VALUES ('1182', '1.54.86.117', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1183', '66.249.69.103', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1184', '180.76.5.90', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1185', '180.76.5.179', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1186', '180.76.5.144', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1187', '180.76.5.53', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1188', '66.249.67.17', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1189', '180.76.5.52', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1190', '123.125.71.112', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1191', '180.76.5.99', '1343404800', '0');
INSERT INTO `tbl_visitors` VALUES ('1192', '66.249.69.103', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1193', '66.249.67.17', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1194', '180.76.6.211', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1195', '180.76.5.87', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1196', '180.76.5.162', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1197', '180.76.5.96', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1198', '175.136.37.131', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1199', '180.76.5.48', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1200', '180.76.6.233', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1201', '123.125.71.44', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1202', '180.76.5.181', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1203', '180.76.5.193', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1204', '178.238.232.57', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1205', '180.76.5.196', '1343491200', '0');
INSERT INTO `tbl_visitors` VALUES ('1206', '1.54.8.74', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1207', '66.249.69.103', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1208', '180.76.5.162', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1209', '180.76.5.50', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1210', '175.136.37.131', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1211', '175.136.37.131', '1343577600', '2');
INSERT INTO `tbl_visitors` VALUES ('1212', '119.56.120.145', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1213', '180.76.5.165', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1214', '58.185.237.66', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1215', '180.76.5.195', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1216', '27.54.13.91', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1217', '180.76.5.180', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1218', '222.255.200.106', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1219', '95.108.247.251', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1220', '180.76.5.193', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1221', '180.76.5.144', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1222', '180.76.5.166', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1223', '66.220.149.251', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1224', '66.220.149.244', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1225', '180.76.5.140', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1226', '58.185.237.66', '1343577600', '2');
INSERT INTO `tbl_visitors` VALUES ('1227', '180.76.5.184', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1228', '180.76.5.148', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1229', '180.76.5.101', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1230', '180.76.6.29', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1231', '27.104.130.98', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1232', '180.76.5.110', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1233', '180.76.5.92', '1343577600', '0');
INSERT INTO `tbl_visitors` VALUES ('1234', '27.104.130.98', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1235', '180.76.5.58', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1236', '27.104.130.98', '1343664000', '2');
INSERT INTO `tbl_visitors` VALUES ('1237', '180.76.5.63', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1238', '180.76.5.187', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1239', '66.249.69.103', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1240', '180.76.5.136', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1241', '180.76.5.88', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1242', '180.76.6.29', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1243', '180.76.5.60', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1244', '180.76.5.158', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1245', '69.84.207.246', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1246', '180.76.6.37', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1247', '180.129.35.222', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1248', '180.76.6.212', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1249', '69.171.228.246', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1250', '180.129.35.222', '1343664000', '2');
INSERT INTO `tbl_visitors` VALUES ('1251', '218.186.10.254', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1252', '180.76.5.189', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1253', '124.197.101.91', '1343664000', '2');
INSERT INTO `tbl_visitors` VALUES ('1254', '124.197.101.91', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1255', '119.56.127.117', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1256', '119.56.127.220', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1257', '222.255.200.106', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1258', '180.76.5.61', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1259', '115.42.201.18', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1260', '58.185.237.66', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1261', '180.76.6.36', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1262', '180.76.5.110', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1263', '58.185.237.66', '1343664000', '2');
INSERT INTO `tbl_visitors` VALUES ('1264', '180.76.5.49', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1265', '180.93.166.168', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1266', '180.76.5.156', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1267', '119.56.115.148', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1268', '180.76.5.180', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1269', '180.76.6.223', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1270', '180.76.6.35', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1271', '180.76.5.113', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1272', '180.76.5.138', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1273', '49.245.157.25', '1343664000', '0');
INSERT INTO `tbl_visitors` VALUES ('1274', '66.249.69.103', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1275', '66.249.67.17', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1276', '180.76.5.197', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1277', '180.76.5.172', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1278', '180.76.5.50', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1279', '27.104.57.145', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1280', '27.104.57.145', '1343750400', '2');
INSERT INTO `tbl_visitors` VALUES ('1281', '180.76.5.185', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1282', '180.76.6.212', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1283', '180.76.5.97', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1284', '180.76.5.191', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1285', '180.76.5.92', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1286', '180.76.5.111', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1287', '180.76.5.95', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1288', '180.76.5.156', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1289', '180.76.5.113', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1290', '180.76.5.151', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1291', '1.54.8.10', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1292', '58.185.237.66', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1293', '58.185.237.66', '1343750400', '2');
INSERT INTO `tbl_visitors` VALUES ('1294', '115.42.201.18', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1295', '180.76.5.139', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1296', '121.7.222.174', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1297', '1.54.160.146', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1298', '180.76.5.63', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1299', '95.108.247.251', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1300', '222.255.200.106', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1301', '180.76.6.233', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1302', '222.255.200.106', '1343750400', '2');
INSERT INTO `tbl_visitors` VALUES ('1303', '180.76.5.56', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1304', '180.76.5.161', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1305', '180.76.6.232', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1306', '180.76.5.186', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1307', '180.76.5.144', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1308', '180.76.5.170', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1309', '1.54.85.194', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1310', '180.76.5.53', '1343750400', '0');
INSERT INTO `tbl_visitors` VALUES ('1311', '1.54.85.194', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1312', '95.108.247.251', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1313', '1.54.22.215', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1314', '180.76.5.56', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1315', '180.76.5.89', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1316', '180.76.5.48', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1317', '180.76.5.67', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1318', '180.76.6.231', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1319', '66.249.69.103', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1320', '180.76.6.20', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1321', '180.76.5.93', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1322', '180.76.5.111', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1323', '180.76.5.185', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1324', '180.76.5.157', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1325', '115.134.132.130', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1326', '141.0.11.57', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1327', '222.255.200.106', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1328', '222.255.200.190', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1329', '115.42.201.18', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1330', '141.0.10.74', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1331', '180.76.5.88', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1332', '180.76.5.49', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1333', '180.76.5.64', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1334', '66.249.72.178', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1335', '180.76.5.193', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1336', '180.76.6.28', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1337', '124.13.239.233', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1338', '180.76.5.156', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1339', '124.13.239.233', '1343836800', '2');
INSERT INTO `tbl_visitors` VALUES ('1340', '180.76.5.189', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1341', '180.76.5.97', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1342', '190.187.3.203', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1343', '180.76.6.233', '1343836800', '0');
INSERT INTO `tbl_visitors` VALUES ('1344', '1.54.9.70', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1345', '180.76.5.148', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1346', '180.76.5.163', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1347', '180.76.5.151', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1348', '180.76.6.230', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1349', '180.76.5.49', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1350', '180.76.5.107', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1351', '66.249.69.103', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1352', '180.76.5.150', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1353', '180.76.5.89', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1354', '180.76.5.91', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1355', '180.76.5.160', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1356', '180.76.5.178', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1357', '180.76.5.153', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1358', '222.255.200.106', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1359', '180.76.5.180', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1360', '180.76.5.64', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1361', '180.76.6.29', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1362', '180.76.5.95', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1363', '115.42.201.18', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1364', '180.76.5.140', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1365', '180.76.6.212', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1366', '118.101.247.69', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1367', '180.76.5.184', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1368', '180.76.5.183', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1369', '180.76.6.224', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1370', '180.76.5.141', '1343923200', '0');
INSERT INTO `tbl_visitors` VALUES ('1371', '180.76.5.196', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1372', '66.249.69.103', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1373', '180.76.5.49', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1374', '180.76.6.37', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1375', '180.76.5.63', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1376', '180.76.6.28', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1377', '180.76.6.227', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1378', '180.76.5.94', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1379', '180.76.5.151', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1380', '124.13.237.149', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1381', '124.13.237.149', '1344009600', '2');
INSERT INTO `tbl_visitors` VALUES ('1382', '180.76.5.110', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1383', '180.76.5.144', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1384', '115.134.113.251', '1344009600', '2');
INSERT INTO `tbl_visitors` VALUES ('1385', '180.76.5.57', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1386', '180.76.5.143', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1387', '180.76.5.173', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1388', '180.76.5.141', '1344009600', '0');
INSERT INTO `tbl_visitors` VALUES ('1389', '180.76.5.60', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1390', '1.54.85.134', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1391', '180.76.5.66', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1392', '66.249.67.17', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1393', '180.76.5.183', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1394', '66.249.69.103', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1395', '180.76.5.182', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1396', '118.101.246.76', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1397', '118.101.246.76', '1344096000', '2');
INSERT INTO `tbl_visitors` VALUES ('1398', '180.76.5.185', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1399', '180.76.6.29', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1400', '180.76.5.93', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1401', '180.76.6.37', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1402', '180.76.5.59', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1403', '180.76.5.54', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1404', '180.76.5.136', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1405', '180.76.6.211', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1406', '124.13.238.104', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1407', '115.134.132.145', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1408', '180.76.5.160', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1409', '180.76.5.91', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1410', '110.159.69.75', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1411', '180.76.6.21', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1412', '175.144.18.106', '1344096000', '0');
INSERT INTO `tbl_visitors` VALUES ('1413', '175.144.18.106', '1344096000', '2');
INSERT INTO `tbl_visitors` VALUES ('1414', '110.159.4.220', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1415', '222.255.200.106', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1416', '118.101.246.138', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1417', '115.135.211.152', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1418', '115.135.209.76', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1419', '115.134.114.195', '1344182400', '0');
INSERT INTO `tbl_visitors` VALUES ('1420', '1.54.9.107', '1344268800', '0');
INSERT INTO `tbl_visitors` VALUES ('1421', '222.255.200.106', '1344268800', '0');
INSERT INTO `tbl_visitors` VALUES ('1422', '115.134.114.195', '1344268800', '0');
INSERT INTO `tbl_visitors` VALUES ('1423', '115.134.114.71', '1344268800', '0');
INSERT INTO `tbl_visitors` VALUES ('1424', '115.134.114.71', '1344268800', '2');
INSERT INTO `tbl_visitors` VALUES ('1425', '110.159.68.16', '1344268800', '2');
INSERT INTO `tbl_visitors` VALUES ('1426', '124.13.239.233', '1344268800', '2');
INSERT INTO `tbl_visitors` VALUES ('1427', '1.54.8.49', '1344268800', '0');
INSERT INTO `tbl_visitors` VALUES ('1428', '115.134.112.123', '1344355200', '2');
INSERT INTO `tbl_visitors` VALUES ('1429', '202.55.70.246', '1344355200', '0');
INSERT INTO `tbl_visitors` VALUES ('1430', '115.135.209.197', '1344355200', '0');
INSERT INTO `tbl_visitors` VALUES ('1431', '222.255.200.106', '1344441600', '0');
INSERT INTO `tbl_visitors` VALUES ('1432', '115.134.132.140', '1344441600', '0');
INSERT INTO `tbl_visitors` VALUES ('1433', '175.144.17.125', '1344441600', '0');
INSERT INTO `tbl_visitors` VALUES ('1434', '110.159.69.187', '1344441600', '0');
INSERT INTO `tbl_visitors` VALUES ('1435', '110.159.69.187', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1436', '124.13.239.184', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1437', '175.144.16.164', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1438', '115.135.209.110', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1439', '110.159.5.189', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1440', '118.101.244.241', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1441', '175.144.17.95', '1344441600', '2');
INSERT INTO `tbl_visitors` VALUES ('1442', '1.54.8.0', '1344441600', '0');
INSERT INTO `tbl_visitors` VALUES ('1443', '1.54.8.0', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1444', '175.144.17.95', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1445', '175.144.17.95', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1446', '110.159.69.248', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1447', '110.159.69.248', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1448', '115.134.134.36', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1449', '222.255.200.106', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1450', '118.101.245.130', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1451', '118.101.245.130', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1452', '222.255.200.106', '1344528000', '70');
INSERT INTO `tbl_visitors` VALUES ('1453', '110.159.6.125', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1454', '110.159.6.125', '1344528000', '0');
INSERT INTO `tbl_visitors` VALUES ('1455', '110.159.70.141', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1456', '115.134.135.192', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1457', '118.101.246.215', '1344528000', '2');
INSERT INTO `tbl_visitors` VALUES ('1458', '1.54.9.224', '1344614400', '0');
INSERT INTO `tbl_visitors` VALUES ('1459', '110.159.69.165', '1344614400', '0');
INSERT INTO `tbl_visitors` VALUES ('1460', '118.101.245.45', '1344614400', '0');
INSERT INTO `tbl_visitors` VALUES ('1461', '118.101.245.45', '1344614400', '2');
INSERT INTO `tbl_visitors` VALUES ('1462', '115.135.151.65', '1344614400', '2');
INSERT INTO `tbl_visitors` VALUES ('1463', '118.101.245.18', '1344614400', '2');
INSERT INTO `tbl_visitors` VALUES ('1464', '118.101.245.18', '1344700800', '2');
INSERT INTO `tbl_visitors` VALUES ('1465', '118.101.245.18', '1344700800', '0');
INSERT INTO `tbl_visitors` VALUES ('1466', '124.13.236.80', '1344787200', '0');
INSERT INTO `tbl_visitors` VALUES ('1467', '222.255.200.106', '1344787200', '0');
INSERT INTO `tbl_visitors` VALUES ('1468', '58.185.237.66', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1469', '58.185.237.66', '1344873600', '2');
INSERT INTO `tbl_visitors` VALUES ('1470', '119.56.119.181', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1471', '119.56.117.167', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1472', '119.56.113.200', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1473', '119.56.118.219', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1474', '222.255.200.106', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1475', '119.56.113.44', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1476', '220.255.2.122', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1477', '220.255.2.135', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1478', '119.56.124.53', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1479', '119.56.116.209', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1480', '220.255.1.145', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1481', '202.142.223.50', '1344873600', '0');
INSERT INTO `tbl_visitors` VALUES ('1482', '1.54.86.74', '1344960000', '0');
INSERT INTO `tbl_visitors` VALUES ('1483', '141.0.8.114', '1344960000', '0');
INSERT INTO `tbl_visitors` VALUES ('1484', '27.104.35.238', '1344960000', '0');
INSERT INTO `tbl_visitors` VALUES ('1485', '115.42.201.18', '1344960000', '0');
INSERT INTO `tbl_visitors` VALUES ('1486', '119.56.123.149', '1344960000', '0');
INSERT INTO `tbl_visitors` VALUES ('1487', '119.56.113.33', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1488', '1.54.8.193', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1489', '119.56.115.238', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1490', '67.222.55.129', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1491', '115.66.238.17', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1492', '95.211.124.232', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1493', '166.111.138.27', '1345046400', '0');
INSERT INTO `tbl_visitors` VALUES ('1494', '58.185.237.66', '1345132800', '0');
INSERT INTO `tbl_visitors` VALUES ('1495', '119.40.20.181', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1496', '174.139.15.186', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1497', '124.197.119.137', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1498', '113.157.220.66', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1499', '27.104.219.173', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1500', '125.17.1.98', '1345219200', '0');
INSERT INTO `tbl_visitors` VALUES ('1501', '61.172.243.23', '1345305600', '0');
INSERT INTO `tbl_visitors` VALUES ('1502', '1.54.86.217', '1345392000', '0');
INSERT INTO `tbl_visitors` VALUES ('1503', '1.54.85.227', '1345478400', '0');
INSERT INTO `tbl_visitors` VALUES ('1504', '95.211.124.232', '1345564800', '0');
INSERT INTO `tbl_visitors` VALUES ('1505', '202.142.223.50', '1345564800', '0');
INSERT INTO `tbl_visitors` VALUES ('1506', '27.104.102.72', '1345564800', '0');
INSERT INTO `tbl_visitors` VALUES ('1507', '58.185.237.66', '1345564800', '0');
INSERT INTO `tbl_visitors` VALUES ('1508', '141.0.8.227', '1345564800', '0');
INSERT INTO `tbl_visitors` VALUES ('1509', '200.66.68.174', '1345651200', '0');
INSERT INTO `tbl_visitors` VALUES ('1510', '124.205.190.101', '1345651200', '0');
INSERT INTO `tbl_visitors` VALUES ('1511', '222.255.200.190', '1345651200', '0');
INSERT INTO `tbl_visitors` VALUES ('1512', '222.255.200.106', '1345651200', '0');
INSERT INTO `tbl_visitors` VALUES ('1513', '124.197.73.97', '1345651200', '0');
INSERT INTO `tbl_visitors` VALUES ('1514', '124.248.205.51', '1345737600', '0');
INSERT INTO `tbl_visitors` VALUES ('1515', '115.42.201.18', '1345737600', '0');
INSERT INTO `tbl_visitors` VALUES ('1516', '27.104.191.113', '1345737600', '0');
INSERT INTO `tbl_visitors` VALUES ('1517', '222.255.200.106', '1345737600', '0');
INSERT INTO `tbl_visitors` VALUES ('1518', '120.50.45.201', '1345737600', '0');
INSERT INTO `tbl_visitors` VALUES ('1519', '200.62.146.210', '1345824000', '0');
INSERT INTO `tbl_visitors` VALUES ('1520', '218.92.73.180', '1345824000', '0');
INSERT INTO `tbl_visitors` VALUES ('1521', '115.132.86.158', '1345910400', '0');
INSERT INTO `tbl_visitors` VALUES ('1522', '125.211.197.214', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1523', '49.245.170.201', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1524', '222.255.200.190', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1525', '222.255.200.106', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1526', '27.104.230.78', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1527', '27.104.228.51', '1345996800', '0');
INSERT INTO `tbl_visitors` VALUES ('1528', '27.104.228.51', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1529', '180.129.60.53', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1530', '180.129.60.53', '1346083200', '2');
INSERT INTO `tbl_visitors` VALUES ('1531', '115.42.201.18', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1532', '58.185.237.66', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1533', '58.185.237.66', '1346083200', '2');
INSERT INTO `tbl_visitors` VALUES ('1534', '136.186.231.16', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1535', '124.197.71.112', '1346083200', '0');
INSERT INTO `tbl_visitors` VALUES ('1536', '218.201.121.99', '1346169600', '0');
INSERT INTO `tbl_visitors` VALUES ('1537', '211.88.76.45', '1346169600', '0');
INSERT INTO `tbl_visitors` VALUES ('1538', '222.255.200.190', '1346169600', '0');
INSERT INTO `tbl_visitors` VALUES ('1539', '222.255.200.106', '1346169600', '0');
INSERT INTO `tbl_visitors` VALUES ('1540', '77.77.152.23', '1346169600', '0');
INSERT INTO `tbl_visitors` VALUES ('1541', '1.54.23.211', '1346256000', '0');
INSERT INTO `tbl_visitors` VALUES ('1542', '119.56.114.2', '1346256000', '0');
INSERT INTO `tbl_visitors` VALUES ('1543', '58.185.237.66', '1346256000', '0');
INSERT INTO `tbl_visitors` VALUES ('1544', '1.54.86.66', '1346428800', '0');
INSERT INTO `tbl_visitors` VALUES ('1545', '115.132.86.158', '1346601600', '0');
INSERT INTO `tbl_visitors` VALUES ('1546', '127.0.0.1', '1346688000', '0');
INSERT INTO `tbl_visitors` VALUES ('1547', '127.0.0.1', '1346774400', '0');
INSERT INTO `tbl_visitors` VALUES ('1548', '127.0.0.1', '1346803200', '0');
INSERT INTO `tbl_visitors` VALUES ('1549', '127.0.0.1', '1346860800', '0');
INSERT INTO `tbl_visitors` VALUES ('1550', '127.0.0.1', '1346947200', '0');
INSERT INTO `tbl_visitors` VALUES ('1551', '127.0.0.1', '1347206400', '0');

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
