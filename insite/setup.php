<?php
/***************************************************************************
*                                setup.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$viewer = $rootPath . "modules/";

if(checkLoginAdmin()) {
	if($type == "main") {
		$type = "cpanel";
	}
	if($type) {
		$viewer .= "$type/";
	} 


	if (file_exists($viewer . $module . $php5Ext)) {
        
		if ( empty($popup))
		{
			include($rootPath . "modules/main/header" . $php5Ext);
			include($rootPath . "modules/main/menu" . $php5Ext);
			include($rootPath . "modules/main/footer" . $php5Ext);
		}

		include($viewer . $module . $php5Ext);	
		if ( empty($popup))
		{
		  $tpl = sprintf($php5TemplateAdminFile, $language, '', 'index.tpl');
	
		  if(!is_file($tpl )) {
			die("can not find template");
		  }	
		  $smarty->display($tpl);
		}  
	} else {
		require_once($php5RootPath . "/under-construction.php");
	}
	
} else {
	if (file_exists($viewer . 'main_login/main.php')) {
		include($viewer . 'main_login/main.php');
		//$smarty->assign('main_path', $viewer . 'main_login/main.php');
		$tpl = sprintf($php5TemplateAdminFile, $language, 'main_login', 'index.tpl');
		if(!is_file($tpl )) {
			die("can not find template");
		}	
	//error_reporting(E_ALL);
	//ini_set('display_errors','On');
		
		$smarty->display($tpl);
	} else {
		require_once($php5RootPath . "/under-construction.php");
	}
}
return true;
