<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateFile, $language, 'main', 'promotion.tpl');
$smarty->assign('link_popup_email', sefBuild($php5WebPath, 'index.php?o=promotion', 1) );
$smarty->assign('link_popup_signup', sefBuild($php5WebPath, 'index.php?o=register', 1) );
$smarty->assign('msg', php5GetParam($_REQUEST, 'msg', '') );
$smarty->assign('popup_email', $smarty->fetch($tpl) );
