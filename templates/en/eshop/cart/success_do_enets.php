<?php
include_once 'includes/send_email.php';
include_once 'includes/generate.php';

$nets_txn_msg = $_REQUEST['nets_txn_msg'];
if ( $nets_txn_msg == 'Approval' )
{
  $user= new User();
  $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );
  $name = $user->name;
  
  
	
  $orders = $_REQUEST['merchant_txn_ref'];
  $order = explode(",", $orders);
  $display_order = "Payment has been made for the following orders: <br/><br/>";
  $o = new Order();
  foreach ($order as $od)
  {
	$display_order .= " - ". sprintf("%06s", $od). "<br/>";
	$o->loadData(add_prefix('order'),'order_id', $od );
	$o->payment_status = 2;
	$o->auth = $_REQUEST['bank_auth_id'];
	$o->ref = $_REQUEST['merchant_txn_ref'];
	$o->updateDB(add_prefix('order'),'order_id', $od );	
  }
  $smarty->assign('display_order', $display_order);	   

  $user_id =  $php5Session->getVar('user_id');
  $user_name =  $php5Session->getVar('user_name');
  $order_id = $php5Session->getVar('order_id');
  //thanks
	$smarty->assign('name', $user->name);	
	$smarty->assign('order_id', $order_id );	
	$content =  $smarty->fetch($php5RootPath.'/templates/en/eshop/thank-you-page.tpl');  
	email_thanks($user->email, $content);

	$content = get_content_order_file($order_id);
  $message = "
Dear $name,

Thanks for purchasing on Hummings.com. You may review your order history from here:
$url_history
 
";


//  email_orders($user->email, $message, $content);

    session_destroy();
    session_start();	
 $php5Session->setVar('user_id', $user_id );
 $php5Session->setVar('user_name', $user_name  );
 $php5Session->setVar('d_order_id', $orders  ); 
 
}

 ?>