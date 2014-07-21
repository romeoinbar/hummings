<?php
/***************************************************************************
*                                index.php
 *
 *   Begin date           	:
 *   Copyright            	:
 *   Email                	:
 ***************************************************************************/
define('PHP5_PHP', true);

global $php5DB, $php5DB_en,$php5Config, $php5Template, $php5User, $php5Session, $php5TemplatePath, $php5Msg, $php5Section, $language, $task, $define;
global $msgAlert, $redirect, $php5DB;
include("configs/extension.inc");
include("configs/config".$php5Ext);

$domain = $_SERVER["HTTP_HOST"];
$language = 'en';
/*if($domain=='japan.motul.com') {
	$language = 'jp';
}*/

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
	echo "To check the config file.";
	die();
}

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
require_once($php5RootPath . "/includes/php5_sef" . $php5Ext );
require_once ($php5RootPath.'/includes/smarty.libs/Smarty.class.php');
//require_once($php5RootPath . "/includes/app" . $php5Ext);
//Begin get params
$admin     = php5GetParam($_REQUEST, "t", "");
$task     = php5GetParam($_REQUEST, "task", "");
$type     = php5GetParam($_REQUEST, "o", "main");
$module   = php5GetParam($_REQUEST, "m", "main");
$file     = php5GetParam($_REQUEST, "f", "");
$post    = php5GetParam($_REQUEST, "po", "");
$php5Msg 	= php5GetParam($_REQUEST, "msg", "");
$rootPath = $php5RootPath . "/";
if($admin) {
	$rootPath .= "insite/";
	require_once($php5RootPath . "/languages/".$language."/insite" . $php5Ext);
} else {
	require_once($php5RootPath . "/languages/".$language."/outsite" . $php5Ext);
}
//End get params
// start init
php5Init( 0 );
include('includes/send_email.php');
$to = 'romeoinbar@gmail.com';
$subject = 'test subject';
$message = 'body test';
$link = sefBuild($php5WebPath, 'index.php?o=newsletters&m=main', 1, true);
echo $link;
//php5Mail(php5GetConfig('config_email'), "Humming", $to, $subject, $message, 0, '');
//send_email_all4($to, $subject, $message);
?>