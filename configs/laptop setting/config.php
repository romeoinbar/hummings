<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$php5Config['db_type'] = 'mysql';

$php5Config['db_host'] = 'localhost';
//$php5Config['db_name_comon'] = 'uaconsul_motul_common';
//$php5Config['db_name_en'] = 'uaconsul_motul_en';
$php5Config['db_name_comon'] = 'hummings';
$php5Config['db_name_en'] = 'hummings';
$php5Config['db_name'] = 'hummings';
$php5Config['db_user'] = 'root';
$php5Config['db_pass'] = '';

$php5Config['table_prefix'] = "tbl_";

//global $php5RootPath, $php5_absolute_path, $php5_ex;
$php5_ex 			= ".php";
$php5SiteName 		= 'malaysia.propertydirect.com.sg';
$php5Keywords 		= 'malaysia.propertydirect.com.sg';
$php5Desc			= 'malaysia.propertydirect.com.sg';
$php5WebPath 		= 'http://localhost/hummings';
$php5WebPathAD 		= 'F:/wamp/www/hummingss/insite';
$php5RootPath		= 'F:/wamp/www/hummings';
$php5RootAdminPath        = 'F:/wamp/www/hummings/insite';
$php5TemplateAdminPath    = 'F:/wamp/www/hummings/templates/insite';
$php5ImagePath		= 'F:/wamp/www/hummings/images';
$php5_image_template_path	= 'F:/wamp/www/hummings/';

$php5RootAdminTempalteCPath		= 'F:/wamp/www/hummings/insite/templates_c/%s';
$php5TemplateAdminFile    = 'F:/wamp/www/hummings/insite/templates/%s/%s/%s';
$php5TemplateImg    = $php5WebPath .'/templates/%s/%s';

//$php5TempaltePath		= 'F:/wamp/www/hummings/templates/%s';
$php5TempaltePath		= 'F:/wamp/www/hummings/templates/';
$php5TemplateFile    = 'F:/wamp/www/hummings/templates/%s/%s/%s';



$php5_sef            = true;
$php5_gzip            = true;


$root_url = "http://localhost/hummings";


define('PHP5PHP_INSTALLED', true);
?>