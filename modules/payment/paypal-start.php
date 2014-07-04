<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/classes/paypal.class.php");
require_once($php5RootPath .'/classes/paypalpayment.class.php');
if (php5GetParam($_REQUEST, 'payment', 1)!=1){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=review', 1));
}
$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$oid = $order->sales_order_number;

$ppPaymentObj = new PaypalPayment(true);
$amount = $php5Session->getVar('cart_total');
$return_url = $php5WebPath.'/paypal-review.php?id=paypal';
$desc = "Hummings.com(For Order ID: ".$oid.")";
$ppPaymentObj->sendToExpress($amount, $return_url, $desc);

?>