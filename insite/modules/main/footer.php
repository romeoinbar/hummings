<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateAdminFile, $language, 'main', 'footer.tpl');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'main'));
if(!is_file($tpl )) {
	die("can not find template");
}
$smarty->assign('footer', $smarty->fetch($tpl));
