<?php
include_once 'includes/send_email.php';
$amount_paid = $php5Session->getVar('latest_total');

if ($amount_paid)
{
  $user= new User();
  $user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );
  $name = $user->name;
  
  $op= new Order_payment();
  $op->amount = $amount_paid ;
  $op->payment_type = 'CC' ;
  $op->addDB(add_prefix('order_payment'));  
  $op->updateID('order_payment_id');    
  
	
  $orders = $php5Session->getVar('order_id');
  $order = explode(",", $orders);
  $display_order = "Payment has been made for the following orders: <br/><br/>";
  $o = new Order();
  foreach ($order as $od)
  {
	$display_order .= " - ". sprintf("%06s", $od). "<br/>";
	$o->loadData(add_prefix('order'),'order_id', $od );
	$o->payment_status = 2;
    $o->payment_id = $op->order_payment_id;
	$o->updateDB(add_prefix('order'),'order_id', $od );	
  }

  $smarty->assign('display_order', $display_order);	   


  $message = "
Dear $name,

Thanks for purchasing on Hummings.com. You may review your order history from here:
$url_history
 
";


  email_orders($user->email, $message);
	   

$user_id =  $php5Session->getVar('user_id');
$user_name =  $php5Session->getVar('user_name');


    session_destroy();
    session_start();	
 $php5Session->setVar('user_id', $user_id );
 $php5Session->setVar('user_name', $user_name  );
}

 ?>