<?php
/***************************************************************************
*                                generate.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
define('PHP5_PHP', true);
////////checkFTP
$arrBCC = array("kimlan@ua-consultants.com");

$path = dirname(__FILE__);

include("$path/configs/extension.inc");
include("$path/configs/config".$php5Ext);

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
    echo "To check the config file.";
    die();
}
$language = 'en';

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
php5Init( 0 );
require_once($php5RootPath . "/includes/generate.php");
require_once($php5RootPath . "/classes/generate.class.php");
echo "Start<br/>\n";
$php5DB_en->setQuery("SELECT *
						FROM #__user_log						
						WHERE status = 0 and times = 1");

	$rows = $php5DB_en->loadObjectList();
print_r($rows);
echo "Done";			
exit;

?>