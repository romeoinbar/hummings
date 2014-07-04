<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'cpanel'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'cpanel', 'main.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=cpanel', 0));
$smarty->assign('main', $smarty->fetch($tpl));



