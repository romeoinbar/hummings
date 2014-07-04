<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

if ($env=='PC')
	$tpl = sprintf($php5TemplateFile, $language, 'eshop', 'user/address_book_list.php');
else
	$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'myaccount/address_book_list.tpl');
	
if(!is_file($tpl )) {
	die("can not find template");
}
$query = "SELECT * FROM #__address_book WHERE user_id='".$php5Session->getVar('user_id')."' ORDER BY name ";
$php5DB_en->setQuery( $query );  
$rows = $php5DB_en->loadObjectList();
$smarty->assign('address_books', $rows);

$add_url = sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_add');

$smarty->assign('add_url', $add_url);
$smarty->assign('main', $smarty->fetch($tpl));
return;

