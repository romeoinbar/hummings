<?php

/***************************************************************************
*                                index.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
define('PHP5_PHP', true);

global $php5DB, $php5DB_en,$php5Config, $php5Template, $php5User, $php5Session, $php5TemplatePath, $php5Msg, $php5Section, $language, $task, $define;
global $msgAlert, $redirect, $php5DB;
include("configs/extension.inc");
include("configs/config".$php5Ext);



$domain = $_SERVER["HTTP_HOST"];
$language = 'en';
$env = 'PC';
/*if($domain=='japan.motul.com') {
    $language = 'jp';
}*/

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
    echo "To check the config file.";
    die();
}
//check wanted view for mobile or desktop
if ($_GET['v'] == 'desktop') {
   	setcookie('siteview', 'desktop',time()+60*60*24*100, "/"); 
}
if (isset($_COOKIE['siteview']) || $_GET['v'] == 'desktop') {

} else {
	require_once($php5RootPath . "/includes/Mobile_Detect.php");
	$Mobile_Detect = new Mobile_Detect();
	if($Mobile_Detect->isMobile()) {
		if($Mobile_Detect->isTablet()) {
		} else {
			$uri = explode('?', $_SERVER['REQUEST_URI']);
			$uri_array = explode('/', trim( $uri[0], '/' ));    
			if(count($uri_array) < 2) {
				header('Location: '.$php5WebPath.'/smp.php');
				return;
			}
		}
	}
}
require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
require_once($php5RootPath . "/includes/php5_sef" . $php5Ext );
require_once ($php5RootPath.'/includes/smarty.libs/Smarty.class.php');
//require_once($php5RootPath . "/includes/app" . $php5Ext);
//Begin get params


$admin     = php5GetParam($_REQUEST, "t", "");
if(!$php5_sef && $admin=='admin') {
	$admin = 'insite';
}
$task     = php5GetParam($_REQUEST, "task", "");
$type     = php5GetParam($_REQUEST, "o", "main");
$module   = php5GetParam($_REQUEST, "m", "main");
$file     = php5GetParam($_REQUEST, "f", "");
$post    = php5GetParam($_REQUEST, "po", "");
$php5Msg    = php5GetParam($_REQUEST, "msg", "");


$rootPath = $php5RootPath . "/";
if($admin=='insite') {
    $rootPath .= "insite/";
    require_once($php5RootPath . "/languages/".$language."/insite" . $php5Ext); 
} else {
    require_once($php5RootPath . "/languages/".$language."/outsite" . $php5Ext);
}
//End get params
// start init
php5Init( 0 );
if($admin=='insite') {
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
$smarty->assign('type', $type);
$smarty->assign('file', $file);
$smarty->assign('mod', $module);
$smarty->assign('task', $task);
$smarty->set_compile_path($php5RootPath."/templates_c/");
$smarty->assign('countries', $define->COUNTRY_SITE());

$smarty->register_function("fckeditor", "fckeditor"); 
$smarty->caching = false;
$smarty->cache_lifetime = 100;

//BEGIN SHOW SITE
initGzip();
$php5Session->setVar('used_discount', 0);
header( "Pragma: no-cache" );
$php5Ext = ".php";
try {

    $env = php5GetParam($_REQUEST, 'env', 'PC');
    $id = php5GetParam($_REQUEST, 'id', '');
    if($env != 'PC') {
        //smartphone
        if (file_exists($rootPath . 'smp_setup' . $php5Ext)) {
            require_once($rootPath . 'smp_setup' . $php5Ext);
            require_once($php5RootPath . '/bottom' . $php5Ext);
            updateVisitor(intval($php5Session->getVar('user_id')));
            return true;
        }
    } else {
        
        if (file_exists($rootPath . 'setup' . $php5Ext)) {
            require_once($rootPath . 'setup' . $php5Ext);
            require_once($php5RootPath . '/bottom' . $php5Ext);
            updateVisitor(intval($php5Session->getVar('user_id')));

            return true;
        }
    }
} catch (Exception $e) {
    require_once($php5RootPath . "/under-construction.php");
    exit;
}
require_once($php5RootPath . "/under-construction.php");
doGzip();
?>