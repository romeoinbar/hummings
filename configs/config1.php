<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
$php5Config['db_type'] = 'mysql';
$php5Config['db_host'] = 'localhost';
$php5Config['db_name_en'] = 'uaconsul_humming';
$php5Config['db_name'] = 'uaconsul_humming';
$php5Config['db_user'] = 'root';
$php5Config['db_pass'] = 'root';
$php5Config['table_prefix'] = "tbl_";
$php5SiteName 		= '';
$php5Keywords 		= '';
$php5Desc			= '';
$php5WebPath 		= 'http://localhost:8080/humming';
$php5WebPathAD 		= 'http://localhost:8080/humming/insite';
$php5RootPath		= 'D:/AppServ/www/humming';
$php5RootAdminPath        = 'D:/AppServ/www/humming/insite';
$php5TemplateAdminPath    = 'D:/AppServ/www/humming/templates/insite';
$php5ImagePath		= 'D:/AppServ/www/humming/images';
$php5_image_template_path	= 'D:/AppServ/www/humming';
$php5RootAdminTempalteCPath		= 'D:/AppServ/www/humming/insite/templates_c/%s';
$php5TemplateAdminFile    = 'D:/AppServ/www/humming/insite/templates/%s/%s/%s';
$php5TemplateImg    = $php5WebPath .'/templates/%s/%s';
$php5TemplateFile    = 'D:/AppServ/www/humming/templates/%s/%s/%s';
$php5_gzip            = true;
$localhost = 1;
define('PHP5PHP_INSTALLED', true);
?>