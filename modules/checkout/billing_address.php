<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
$d=1;
/*
$redirect_path = sefBuild($php5WebPath, 'index.php?o=checkout&m=main' , 1);
if (!$php5Session->getVar('user_id')) {	
	$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient' , 1));
	$redirect_path = sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1);
	php5Redirect($redirect_path);
} 
isCheckout($redirect_path);
*/
include_once 'includes/select_input.php';
include 'templates/en/eshop/cart/load_billing_address1.php';	

$smarty->assign('billing_address_url2', sefBuild($php5WebPath, 'index.php?o=checkout&m=billing_address2' , 1) );
$smarty->assign('title', gen_select(add_prefix('title'), 'title', "title" . $d, 'title', 'title', ' ') );
$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'cart/billing.tpl');
$smarty->assign('main', $smarty->fetch($tpl) );
?>