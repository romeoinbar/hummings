<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');

$ppPaymentObj = new PaypalPayment(true);

$paymentType = 'paypal';

switch($paymentType){
       
        case 'paypal':
                $ppPaymentObj->getExpressInfo($_GET['token']);
               
                //$ppPaymentObj->print_rp($ppPaymentObj->getBillingInfo());
               
                //$ppPaymentObj->print_rp($ppPaymentObj->getShippingInfo());
				$result = '<p>Order ID: '.$php5Session->getVar('order_number').'</p>
						<p>Total amount: '.$php5Session->getVar('cart_total').'</p>
						<p><a href="'.sefBuild($php5WebPath, 'index.php?o=payment&f=paypal-confirm&task=main&id=paypal', 1).'">Yes, Place Order!</a></p>';
				$smarty->assign('result', $result);	
                $tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-review.tpl');				
				$main_content =  $smarty->fetch($tpl); 
				$smarty->assign('main',$main_content);	

                break;
               
        case 'card':
               
                break;
}
 
?>



