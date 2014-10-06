<?php
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');
require_once($php5RootPath . "/classes/order.class.php");
require_once $php5RootPath .'/includes/generate.php';
require_once($php5RootPath . "/includes/send_email.php");


$order = new php5Order($php5DB_en);
$order->load($php5Session->getVar('orderID'));
$name = $order->name;

$orderID = $php5Session->getVar('order_number');
$amount = $php5Session->getVar('cart_total');

//$orderID = '4101001352';
//$amount = 218.00;

$ppPaymentObj = new PaypalPayment(true);

$paymentType = 'paypal';

switch($paymentType){
       
        case 'paypal':
				if ($orderID!=""){			  					
					
					$ppPaymentObj->getExpressInfo($_GET['token']);
					$result = 'Express Transaction: ' . $ppPaymentObj->confirmExpress($amount, $orderID);
					$smarty->assign('transaction', $result);	
					
					$smarty->assign('order_id', $orderID);
					$smarty->assign('name', $name);
					$tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-confirm.tpl');				
					$main_content =  $smarty->fetch($tpl); 
					$smarty->assign('main',$main_content);	
					
					$order->payment_id = 2;
					$order->payment_terms = 'PP';
					$order->store();
					//=======================================================================	
					//Update payment status
					//=======================================================================  
					
					$php5DB_en->setQuery("INSERT INTO #__order_payment(amount,payment_type,order_id) VALUES('".$php5Session->getVar('cart_total')."','PP',".$php5Session->getVar('orderID').")");
					$php5DB_en->query();
					
					//=======================================================================	
					//Remove cart
					//=======================================================================
					$max = $php5Session->getVar('counter');
					$php5Session->setVar('counter' , $max-1); 				 
					 for ($i = 1; $i<$max; $i++)
					 {
					   $php5Session->setVar('pid'. $i , $php5Session->getVar('pid'. ($i+1)) );
					   $php5Session->setVar('addon' . $i , $php5Session->getVar('addon'. ($i+1)) );
					   $php5Session->setVar('qty' . $i , $php5Session->getVar('qty'. ($i+1)) );
					   $php5Session->setVar('selected_recipient' . $i , $php5Session->getVar('selected_recipient'. ($i+1)) );  
					   $php5Session->setVar('option' . $i , $php5Session->getVar('option'. ($i+1)) );     
					   
						 for ($c=0; $c<= $php5Session->getVar('total_addon'. ($i+1)) ; $c++)
						 {
									$s2 =  $php5Session->getVar('addon'. ($i+1) . "_" . $c);  
									$php5Session->setVar(  'addon'. $i . "_" . $c ,$s2 );	 
									$php5Session->setVar(  'total_addon'. $i , $php5Session->getVar( 'total_addon'. ($i+1))   );						    
						 }
					 }				
					$php5DB_en->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$php5Session->getVar('user_id')." AND order_id<".$list_ID[$i]." AND sap=1");
					$tmp = $php5DB_en->loadResult();
					$update_indicator = ($tmp>0)?1:0;
					
					generate_customer_file( $php5Session->getVar('user_id'), $update_indicator);	
					
					generate_order_file($orderID);
					
					$message = prepare_order($order->order_id,  sprintf($php5TemplateFile, $language, 'eshop', 'cart/order_mail.php'));
					email_orders($order->email, "Hummings : Order Confirmation " , $message);  		
    				//email_orders( 'online@humming.com.sg' , "Hummings : Order Confirmation " , $message);
					$php5Session->setVar('orderID','');   
					$php5Session->setVar('cart_total','');  
					$php5Session->setVar('ship','');  
					$php5Session->setVar('gst','');   
					$php5Session->setVar('subbtotal','');     
				} else {
					php5Redirect(sefBuild($php5WebPath, 'index.php?o=eshop&f=checkout&task=show', 1));
				}
                break;
               
        case 'card':
                $ppPaymentObj->setCardInfo('4650675315555387', 'Visa', '012018', '111');
               // $ppPaymentObj->setBillingInfo('John', 'Doe', 'None', '123 Any Street', 'Anytown', 'CA', '90000', 'US');
                echo 'Direct Transaction: ' . $ppPaymentObj->payWithCard($amount, $orderID);
               
                break;
}
?>