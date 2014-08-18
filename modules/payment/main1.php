<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/classes/order.class.php");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');
if (php5GetParam($_REQUEST, 'payment', 1)!=1){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=review', 1));
}
$oid = "";
$list_ID = explode(',',$php5Session->getVar('list_ID'));
for ($i=0; $i<count($list_ID); $i++){
	$order = new php5Order($php5DB_en);
	$order->load($list_ID[$i]);
	$oid .= $order->sales_order_number.",";
}

if ($oid ==""){
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=show', 1));
} else {
	$oid = substr($oid,0, strlen($oid)-1);
}

$php5Session->setVar('order_number', $oid);

$ppPaymentObj = new PaypalPayment(true);

$amount = $php5Session->getVar('cart_total');

$ship = str_replace('S$ ', "", $php5Session->getVar('ship'));

$tax = str_replace('S$ ', "", $php5Session->getVar('gst'));

$subtotal = str_replace('S$ ', "", $php5Session->getVar('subbtotal'));


$return_url = sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-confirm1', 1);				
$desc = "Hummings.com(For Order ID: ".$oid.")";

//echo $amount. $subtotal. $ship. $tax. $return_url. $desc;

//$ppPaymentObj->sendToExpress($amount, $subtotal, $ship, $tax, $return_url, $desc);
//header('Location: ' .  $return_url );
$redirect 	=  $return_url;
?>
