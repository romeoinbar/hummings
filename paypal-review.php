<?php
//defined('PHP5_PHP') or die("Application is stopping!!!");
require_once("classes/paypal.class.php");
require_once('classes/paypalpayment.class.php');


$ppPaymentObj = new PaypalPayment(true);

$paymentType = $_GET['id'];

switch($paymentType){
       
        case 'paypal':
                $ppPaymentObj->getExpressInfo($_GET['token']);				
              /* //echo $_SERVER['REQUEST_URI'];
                //$ppPaymentObj->print_rp($ppPaymentObj->getBillingInfo());
               
                //$ppPaymentObj->print_rp($ppPaymentObj->getShippingInfo());
				
				$smarty->assign('url_confirm',sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-confirm&task=main&id='.$paymentType, 1));	
               	$tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-review.tpl');
				$main_content =  $smarty->fetch($tpl); 
				$smarty->assign('main',$main_content);	*/
				 echo '<a href="http://www.hummings.com/cart/payment/paypal-confirm/main/'.$paymentType.'">Yes, Place Order!</a>';
                break;
               
        case 'card':
               
                break;
}

?>