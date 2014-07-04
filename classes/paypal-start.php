<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/classes/paypal.class.php");
if (php5GetParam($_REQUEST, 'payment', 1)!=1){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=review', 1));
}
$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$oid = $order->sales_order_number;
$pp = new Paypal();

// Specify your paypal email
$pp->addField('business', 'seller_1357802909_biz@ua-consultants.com');

// Specify the currency
$pp->addField('currency_code', 'USD');

// Specify the url where paypal will send the user on success/failure
$pp->addField('return', sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-success&task=main&id='.$oid, 1));
$pp->addField('cancel_return', sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-failure&task=main&id='.$oid, 1));
// Specify the url where paypal will send the IPN
$pp->addField('notify_url', sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-ipn', 1));

$item_name = 'Hummings.com(For Order ID: ' . $oid . ')';
// Specify the product information
$pp->addField('item_name', $item_name);
$pp->addField('amount',$php5Session->getVar('cart_total'));
$pp->addField('item_number', sprintf("%03d", $oid));
//$pp->addField('description', 'Budget: ' . $job->budget . ' Hour per lesson ' . $job->hour_per_lesson . ' Lesson per month ' . $job->lessons_per_month);

// Specify any custom value
$pp->addField('oid', $oid);

$smarty->assign('gateway_url', $pp->gatewayUrl);
$smarty->assign('fields', $pp->fields);

$tpl = sprintf($php5TemplateFile, $language, 'payment', 'main.tpl');

$main_content =  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	

?>