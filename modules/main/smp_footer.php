<?php
/***************************************************************************
*                                footer.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

$smarty->assign('logined', ($php5Session->getVar('user_id')>0)?1:0);
$smarty->assign('name', $php5Session->getVar('user_name'));
$smarty->assign('url_logout', sefBuild($php5WebPath, "index.php?o=eshop&m=logout", 1));

$tpl = sprintf($php5TemplateFile, $language, 'main', 'smp_footer.tpl');
$smarty->assign('url_signin', sefBuild($php5WebPath, "index.php?o=eshop&m=register", 1));
$smarty->assign('url_checkout', sefBuild($php5WebPath, "index.php?o=checkout&task=main", 1));
$smarty->assign('url_fullsite', $php5WebPath.'/?v=desktop');
$smarty->assign('url_service', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id=Service%20Policy_18_', 1));
$smarty->assign('url_contact', sefBuild($php5WebPath, 'index.php?o=articles&f=main&task=view&id=Contact%20Us_19_', 1));

$smarty->assign('footer', $smarty->fetch($tpl));