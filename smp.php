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
//smartphone, release fullsite view
$env = 'smp';
if(isset($_COOKIE['siteview'])){
	unset($_COOKIE['siteview']);
	setcookie('siteview', null, -1, '/');
}
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
require_once($php5RootPath . "/includes/php5_smp_sef" . $php5Ext );
require_once ($php5RootPath.'/includes/smarty.libs/Smarty.class.php');
//require_once($php5RootPath . "/includes/app" . $php5Ext);
//Begin get params
$admin     = php5GetParam($_REQUEST, "t", "");
$task     = php5GetParam($_REQUEST, "task", "");
$type     = php5GetParam($_REQUEST, "o", "main");
$module   = php5GetParam($_REQUEST, "m", "smp_main");
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
if($admin) {
} else {
	if($type =="contact_detail" && $module=='forget_password') {
	} else {
		if($type!="main") {
			//require_once($php5RootPath . "/modules/main/is_login" . $php5Ext);
		}
	}
}

$smarty = new Smarty;

$smarty->compile_check = true;
$smarty->debugging = false;

$smarty->assign('php5RootPath', $php5RootPath);
$smarty->assign('php5WebPathAD', $php5WebPathAD);
$smarty->assign('php5RootAdminPath', $php5RootAdminPath);
$smarty->assign('php5WebPath', $php5WebPath);
$smarty->assign('php5TemplateAdminPath', $php5TemplateAdminPath);
$smarty->assign('php5TemplatePath', $php5TemplatePath);
$smarty->assign('language', $language);
$smarty->assign('module', $type);
//$smarty->assign('php5TemplateImg', sprintf($php5TemplateImg, 'en', 'images'));
$smarty->assign('countries', $define->COUNTRY_SITE());

$smarty->register_function("fckeditor", "fckeditor"); 
$smarty->caching = false;
$smarty->cache_lifetime = 100;

//BEGIN SHOW SITE
initGzip();

header( "Pragma: no-cache" );
try {
	//echo $rootPath . 'setup' . $php5Ext;die;
	if (file_exists($rootPath . 'smp_setup' . $php5Ext)) {
		$id = php5GetParam($_REQUEST, 'id', '');
		require_once($rootPath . 'smp_setup' . $php5Ext);
		require_once($php5RootPath . '/bottom' . $php5Ext);
		updateVisitor(intval($php5Session->getVar('user_id')));
		return true;
	}
} catch (Exception $e) {
	require_once($php5RootPath . "/under-construction.php");
	exit;
}
require_once($php5RootPath . "/under-construction.php");
doGzip();
?>