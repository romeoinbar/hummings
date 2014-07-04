<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');

$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$oid = $order->sales_order_number;

if ($oid ==""){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=checkout&task=main', 1));
}

$php5Session->setVar('order_number', $oid);

$ppPaymentObj = new PaypalPayment(true);



$amount = $php5Session->getVar('cart_total');

$ship = str_replace('S$ ', "", $php5Session->getVar('ship'));

$tax = str_replace('S$ ', "", $php5Session->getVar('gst'));

$subtotal = str_replace('S$ ', "", $php5Session->getVar('subbtotal'));

$return_url = sefBuild($php5WebPath, 'index.php?o=mobile_payment&f=paypal-confirm', 1);				
$desc = "Hummings.com(For Order ID: ".$oid.")";

echo 'amount= '.$amount.'<br>'. 
	'subtotal= '.$subtotal. '<br>'.
	'ship= '.$ship. '<br>'.
	'tax= '.$tax. '<br>'.
	'return_url= '.$return_url. '<br>'.
	'desc= '.$desc;

$ppPaymentObj->sendToExpress($amount, $subtotal, $ship, $tax, $return_url, $desc);

?>
