<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');
require_once($php5RootPath . "/classes/order.class.php");

$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$name = $order->name;

$orderID = $php5Session->getVar('order_number');
$amount = $php5Session->getVar('cart_total');

$ppPaymentObj = new PaypalPayment(true);

$paymentType = 'paypal';

switch($paymentType){
       
        case 'paypal':	                 
				$result = 'Express Transaction: ' . $ppPaymentObj->confirmExpress($amount, $orderID);
				$smarty->assign('transaction', $result);	
				$smarty->assign('order_id', $orderID);
				$smarty->assign('name', $name);
                $tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-confirm.tpl');				
				$main_content =  $smarty->fetch($tpl); 
				$smarty->assign('main',$main_content);	            
                break;
               
        case 'card':
                $ppPaymentObj->setCardInfo('4650675315555387', 'Visa', '012018', '111');
               // $ppPaymentObj->setBillingInfo('John', 'Doe', 'None', '123 Any Street', 'Anytown', 'CA', '90000', 'US');
                echo 'Direct Transaction: ' . $ppPaymentObj->payWithCard($amount, $orderID);
               
                break;
}
?>