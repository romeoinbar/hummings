<?php
 /***************************************************************************
 *                                php5_define.php
 *
 *   Begin date           	: Wednesday, Aug 3, 2005
 *   Copyright            	: (C) 2005 K&G Software Company
 *   Email                	: sales@php5-vn.com
 ***************************************************************************/

defined('PHP5_PHP') or die("Application is stopping!!!");

//Define project url
define( '_PHP5_NOTRIM', 0x0001 );
define( '_PHP5_ALLOWHTML', 0x0002 );
define( '_PHP5_ALLOWRAW', 0x0004 );

// Page
define( '_PHP5_MAXRECORD', 10);

define('ADMIN_IDS', "1");

//user permission
define('PER_USER', 0);
define('PER_ADMIN', 1);
define('PER_MAGEZINE', 2);
define('PER_RADIO', 4);
define('PER_ADV', 8);
define('PER_EXHIBITION', 16);
define('PER_OH', 32);
define('PER_INTERNET', 64);
define('PER_EVENT', 128);
define('PER_THC', 256);
define('PER_BLOG', 512);
define('PER_CHILD', 1024);
define('PER_OTHER', 2048);
//error infor
define('php5ConfigConnectError',1);

define('php5ConfigSendMail', '/usr/sbin/sendmail');
define('php5ConfigCharset',"utf-8");
define('php5ConfigMailer', "sendmail");

define('php5ConfigSMTPAuth', "0");
define('php5ConfigSMTPUser', "");
define('php5ConfigSMTPPass', "");
define('php5ConfigSMTPHost', "");

//user permission
define('php5ConfigUser', 0);
define('php5ConfigAdmin', 1);

//paging
define('php5ConfigMaxRecords', 10);
define('php5ConfigPageTotal', 1);
define('php5ConfigBeginPage', 1);

//Resume activity
define('php5ConfigActivitySendEmail', 1);
define('php5ConfigActivityApplyForAJob', 2);
define('KEY_API_HUMMING', 'e23e6678e0d32f25d5a29c344b505250ae15fd3e');

$url_schemes = 'data:, file:, ftp:, gopher:, imap:, ldap:, mailto:, news:, nntp:, telnet:, javascript:, irc:, mms:';
define( '_URL_SCHEMES', $url_schemes );
define( 'RG_EMULATION', 1 );
//File download 
define('MAX_SIZE_FILE_DOWNLOAD', 1024*500);
define('ERROR_REGISTER','Thông báo lỗi. Vui lòng đăng ký lại. Xin cám ơn!');

$cat_type[0] = "News";
$cat_type[1] = "About Humming";
?>