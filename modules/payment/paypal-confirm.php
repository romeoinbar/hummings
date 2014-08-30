<?php
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
include($php5RootPath . '/classes/paypal.class.php');
include($php5RootPath . '/classes/paypalpayment.class.php');
require_once($php5RootPath . "/classes/order.class.php");
require_once($php5RootPath . "/includes/send_email.php");
include_once $php5RootPath .'/classes/sapfields.class.php';
include $php5RootPath .'/includes/generate.php';


$orderID = $php5Session->getVar('order_number');
$amount = $php5Session->getVar('cart_total');

$php5DB_en->setQuery("SELECT `name` FROM #__order WHERE sales_order_number='".$orderID."'");
$name = $php5DB_en->loadResult();

//$orderID = '4101001352';
//$amount = 218.00;

$ppPaymentObj = new PaypalPayment(true);

$paymentType = 'paypal';

switch($paymentType){
       
        case 'paypal':
				if ($orderID!=""){			  					
					
					$ppPaymentObj->getExpressInfo($_GET['token']);
					$confirmed = $ppPaymentObj->confirmExpress($amount, $orderID);
					if ($confirmed) {
						$result = 'Express Transaction: ' . $confirmed;					
						$smarty->assign('transaction', $result);	
						
						$smarty->assign('order_id', $orderID);
						$smarty->assign('name', $name);
						$tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-confirm.tpl');				
						$main_content =  $smarty->fetch($tpl); 
						$smarty->assign('main',$main_content);	
						
						$list_ID = explode(',',$php5Session->getVar('list_ID'));
						for ($i=0; $i<count($list_ID); $i++){
							$order1 = new php5Order($php5DB_en);
							$order1->load($list_ID[$i]);												
							
							$order1->payment_terms = 'PP';
							$order1->payment_id = 2;
							$order1->sap=1;
							$order1->store();
							
							//=======================================================================	
							//Update payment status
							//=======================================================================  
							
							$php5DB_en->setQuery("INSERT INTO #__order_payment(amount,payment_type,order_id) VALUES('".getTotalOrder($list_ID[$i])."','PP',".$list_ID[$i].")");
							$php5DB_en->query();	
							
							$php5DB_en->setQuery("SELECT status FROM #__user WHERE user_id=".$php5Session->getVar('user_id'));
							$user_status = $php5DB_en->loadResult();					
							
							$php5DB_en->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$php5Session->getVar('user_id')." AND order_id<".$list_ID[$i]." AND sap=1");
							$tmp = $php5DB_en->loadResult();
							$update_indicator = ($tmp>0)?1:0;
							
							generate_customer_file( $php5Session->getVar('user_id'), $update_indicator);	
							
							generate_order_file($list_ID[$i]); 
							$message = prepare_order($list_ID[$i],  sprintf($php5TemplateFile, $language, 'eshop', 'cart/order_mail.php'));
							email_orders($order1->email, "Hummings : Order Confirmation " , $message);  	
						}
						
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
						
							
						//email_orders( 'online@humming.com.sg' , "Hummings : Order Confirmation " , $message);
						$php5Session->setVar('orderID','');   
						$php5Session->setVar('cart_total','');  
						$php5Session->setVar('ship','');  
						$php5Session->setVar('gst','');   
						$php5Session->setVar('subbtotal','');     
					} else {				
						
						/*$php5DB_en->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$php5Session->getVar('user_id')." AND order_id<".$php5Session->getVar('orderID'));
						$tmp = $php5DB_en->loadResult();
						$update_indicator = ($tmp>0)?1:0;
						
						//$update_indicator = check_update_indicator( $php5Session->getVar('user_id'));
						generate_customer_file( $php5Session->getVar('user_id'), $update_indicator);							
						generate_order_file($php5Session->getVar('orderID')); 
						*/
						
						$list_ID = explode(',',$php5Session->getVar('list_ID'));
						for ($i=0; $i<count($list_ID); $i++){
							$order1 = new php5Order($php5DB_en);
							$order1->load($list_ID[$i]);
							
							$php5DB_en->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$php5Session->getVar('user_id')." AND order_id<".$list_ID[$i]." AND sap=1");
							$tmp = $php5DB_en->loadResult();
							$update_indicator = ($tmp>0)?1:0;
							
							generate_customer_file( $php5Session->getVar('user_id'), $update_indicator);								
							generate_order_file($list_ID[$i]); 
							
						}
						
						$tpl = sprintf($php5TemplateFile, $language, 'payment', 'paypal-failure.tpl');				
						$main_content =  $smarty->fetch($tpl); 
						$smarty->assign('main',$main_content);	
					}
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
function getTotalOrder($order_id){
	global $php5DB;
	$surcharge = 0;
	$subtotal = 0;
	$g_total = 0;
	$php5DB->setQuery("SELECT * FROM #__order_item WHERE order_id=".$order_id);
	$rows = $php5DB->loadObjectList();
	foreach ($rows as $row){
		$product = new Product();
		$product->loadData(add_prefix('product'), 'product_id', $row->product_id);
		
		$order_item = new Order_item();
		$order_item->loadData(add_prefix('order_item'), 'order_item_id', $row->order_item_id);			  
		
		$qty = $row->qty;
		$unit_price = $order_item->get_discounted_price();	
		$surcharge += $order_item->get_surcharge();				  	 
					 
		$total = $unit_price * $qty;	
		$subtotal +=  $total; 
	}
	$g_total = $subtotal + $product->gst($subtotal+$surcharge) + $surcharge;
	return $g_total;
}
?>