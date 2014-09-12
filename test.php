<?php
/***************************************************************************
*                                index.php
 *
 *   Begin date           	:
 *   Copyright            	:
 *   Email                	:
 ***************************************************************************/
define('PHP5_PHP', true);
$arrBCC = array("kimlan@ua-consultants.com");

include("configs/extension.inc");
include("configs/config".$php5Ext);

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
    echo "To check the config file.";
    die();
}
$language = 'en';

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
php5Init( 0 );

?>