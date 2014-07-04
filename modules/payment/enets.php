<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");

if (php5GetParam($_REQUEST, 'payment', 1)!=1){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=review', 1));
}
$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('order_id'));
$oid = $order->sales_order_number;
/*$pp = new Paypal();

// Specify your enets email
$pp->addField('business', 'charlestoh22@gmail.com');

// Specify the currency
$pp->addField('currency_code', 'USD');

// Specify the url where enets will send the user on success/failure
$pp->addField('return', sefBuild($php5WebPath, 'index.php?o=payment&f=enets-success&task=main&id='.$oid, 1));
$pp->addField('cancel_return', sefBuild($php5WebPath, 'index.php?o=payment&f=enets-failure&task=main&id='.$oid, 1));
// Specify the url where enets will send the IPN
$pp->addField('notify_url', sefBuild($php5WebPath, 'index.php?o=payment&f=enets-ipn', 1));

$item_name = 'Hummings.com(For Order ID: ' . $oid . ')';
// Specify the product information
$pp->addField('item_name', $item_name);
$pp->addField('amount',$php5Session->getVar('cart_total'));
$pp->addField('item_number', sprintf("%03d", $oid));
//$pp->addField('description', 'Budget: ' . $job->budget . ' Hour per lesson ' . $job->hour_per_lesson . ' Lesson per month ' . $job->lessons_per_month);

// Specify any custom value
$pp->addField('oid', $oid);

$smarty->assign('gateway_url', $pp->gatewayUrl);
$smarty->assign('fields', $pp->fields);*/
$fields = array();
$fields['mid'] = '947773019';
$fields['amount'] = $php5Session->getVar('cart_total');
$fields['txnRef'] = md5(time());
$fields['umapiType'] = 'lite';
$smarty->assign('fields', $fields);
$smarty->assign('gateway_url', 'https://www.enets.sg/enets2/enps.do');


$tpl = sprintf($php5TemplateFile, $language, 'payment', 'enets.tpl');

$main_content =  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	

?>