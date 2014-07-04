<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$smarty->assign('url_login', sefBuild($php5WebPath, 'index.php?o=eshop&m=login&t=outsite', 1));	
$smarty->assign("url_register", sefBuild($php5WebPath, 'index.php?o=eshop&m=register', 1));
$smarty->assign("url_search_status", sefBuild($php5WebPath, 'index.php?o=order_status&m=view', 1));

$smarty->assign('is_login', ($php5Session->getVar('user_id'))?1:0);

$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=order_history1', 1));

// Delivery status
$php5DB_en->setQuery("SELECT * FROM #__delivery_status ORDER BY delivery_status_id");
$status = $php5DB_en->loadObjectList();
$smarty->assign('status', $status);

$tpl = sprintf($php5TemplateFile, $language, 'order_status', 'main.tpl');
$main_content =  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
?>