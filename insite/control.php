<?php
/***************************************************************************
*                                control.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$viewer = $rootPath . "modules/";

if(checkLoginAdmin()) {

} else {
	include($viewer . 'main_login/main.php');
	//$smarty->assign('main_path', $viewer . 'main_login/main.php');
	$tpl = sprintf($php5TemplateAdminFile, $language, 'main_login', 'index.tpl');
	if(!is_file($tpl )) {
		die("can not find template");
	}	
	$smarty->display($tpl);
}
return true;
