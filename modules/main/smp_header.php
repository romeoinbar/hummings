<?php
/***************************************************************************
*                                header.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
$tpl = sprintf($php5TemplateFile, $language, 'main', 'smp_header.tpl');

$smarty->assign('link_category2', sefBuild($php5WebPath, 'index.php?o=category&m=main&task=main&id=25', 1) );
$smarty->assign('link_promotion', sefBuild($php5WebPath, "index.php?o=articles&m=main&task=category&id=1", 1) );
$smarty->assign('link_cart', sefBuild($php5WebPath, "index.php?o=checkout&m=main", 1));
$smarty->assign('link_search', sefBuild($php5WebPath, "index.php?o=eshop&m=search", 1));
$smarty->assign('header', $smarty->fetch($tpl));

