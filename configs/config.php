<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$php5Config['db_type'] = 'mysql';

$php5Config['db_host'] = 'localhost';

$php5Config['db_name_comon'] = 'hummings_db';
$php5Config['db_name_en'] = 'hummings_db';
$php5Config['db_name'] = 'hummings_db';
$php5Config['db_user'] = 'hummings_db';
$php5Config['db_pass'] = 'abc1234';

$php5Config['table_prefix'] = "tbl_";

//global $php5RootPath, $php5_absolute_path, $php5_ex;
$php5_ex 			= ".php";

$php5WebPath        = 'http://www.hummings.com';
$php5WebPathS        = 'https://www.hummings.com';
$php5WebPathP        = 'http://www.hummings.com';
$php5WebPathAD      = 'https://www.hummings.com/admin';
$php5RootPath       = '/home/hummings/public_html';
$php5RootAdminPath        = '/home/hummings/public_html/insite';
$php5TemplateAdminPath    = '/home/hummings/public_html/templates/insite';
$php5ImagePath      = '/home/hummings/public_html/images';
$php5_image_template_path   = '/home/hummings/public_html';
$php5RootAdminTempalteCPath     = '/home/hummings/public_html/insite/templates_c/%s';
$php5TemplateAdminFile    = '/home/hummings/public_html/insite/templates/%s/%s/%s';
$php5TemplateImg    = $php5WebPath .'/templates/%s/%s';
$php5TemplateFile    = '/home/hummings/public_html/templates/%s/%s/%s';


$php5_sef            = true;
$php5_gzip            = true;


$root_url = "https://www.hummings.com";


define('PHP5PHP_INSTALLED', true);
?>