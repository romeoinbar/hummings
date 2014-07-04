<?php
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/includes/send_email.php");

include_once $php5RootPath .'classes/sapfields.class.php';
include $php5RootPath .'includes/generate.php';

$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$orderID = $php5Session->getVar('order_number');
if ($orderID!=""){	
	$update_indicator = check_update_indicator( $php5Session->getVar('user_id'));
	generate_customer_file( $php5Session->getVar('user_id'), $update_indicator);	
					
	generate_order_file($php5Session->getVar('orderID')); 	
	$tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-failure.tpl');				
	$main_content =  $smarty->fetch($tpl); 
	$smarty->assign('main',$main_content);	
} else {
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=show', 1));
}
?>