<?php
include_once 'includes/send_email.php';
include_once 'includes/random_code.php';
include_once 'classes/delivery.class.php';
include_once 'classes/sapfields.class.php';
	
$user_id = $php5Session->getVar('user_id');
$order_created = $php5Session->getVar('order_id');	
$php5Session->setVar('latest_total', $_POST['total']);	

//if ($order_created)		{}
//else
{

//////////////////////////////////////////////////////////  create user
  $user= new User();	
  loaduser();	
  if (!$user_id)
  {	
    $user->password = "abc123";	
    email_register_user($user->email, $user->password);
    $user->gender = " ";	  
    $user->password = md5("abc123");	
//  $user->showvariables();  
    $user->addDB(add_prefix('user'));
    $user->updateID('user_id'); 
    $php5Session->setVar('user_id', $user_id );
    $php5Session->setVar('user_name', $user_name  );  
  }
  else
  {
   $user->user_id = $php5Session->getVar('user_id'); 
  }

////////////////////////////////////////////////////////// update coupon  
	  $coupon= new Coupon();
	  $coupon->loadData(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
	  $coupon->redemption_date = date('Y-m-d');  
      $coupon->redeem_by = $user->user_id;    
	  $coupon->updateDB(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
 
	   $cart = new Cart();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
	   $d = 0;
       $item_price = 0;
	   $delivery_fee = 0;
	   if ($recipients!= null)
	   {
		   
            foreach ($recipient as $r )
	        {
			   $d++;
               $order_delivery = generate_order_delivery($d);			
               if (have_product_type_in_cart(1))
               {
	            $order = generate_order(1, $d);
	            generate_order_items($order,1,$order_delivery);
                }
               if (have_product_type_in_cart(2))
               {

	            $order = generate_order(2, $d);
	            generate_order_items($order,2,$order_delivery);
               }
              if (have_product_type_in_cart(4))
              {

	           $order = generate_order(4, $d);
	           generate_order_items($order,4,$order_delivery);
              }
             if (have_product_type_in_cart(5))
             {

	           $order = generate_order(5, $d);
	           generate_order_items($order,5,$order_delivery);
              }

				
			}
	   }
	   
}

$main = send_enets($_POST['total'],$php5Session->getVar('order_id')	 );


function loaduser()
{
global $php5Session;
global $user;
$user->title = $php5Session->getVar('tbl_user_title');	
$user->surname = $php5Session->getVar('tbl_user_surname');	
$user->company = $php5Session->getVar('tbl_user_' . 'company');	
$user->block = $php5Session->getVar('tbl_user_' . 'block');	
$user->unit = $php5Session->getVar('tbl_user_' . 'unit');	
$user->building = $php5Session->getVar('tbl_user_' . 'building');	
$user->address1 = $php5Session->getVar('tbl_user_' . 'address1');	
$user->address2 = $php5Session->getVar('tbl_user_' . 'address2');	
$user->address3 = $php5Session->getVar('tbl_user_' . 'address3');	
$user->address4 = $php5Session->getVar('tbl_user_' . 'address4');	
$user->postcode = $php5Session->getVar('tbl_user_' . 'postcode');	
$user->city = $php5Session->getVar('tbl_user_' . 'city');	
$user->country = $php5Session->getVar('tbl_user_' . 'building');	
$user->email = $php5Session->getVar('tbl_user_' . 'email');	
$user->telephone1 = $php5Session->getVar('tbl_user_' . 'telephone1');	
$user->telephone2 = $php5Session->getVar('tbl_user_' . 'telephone2');	
$user->fax = $php5Session->getVar('tbl_user_' . 'fax');	

}



function send_enets($amount,$orders)
{

$process_url = "http://localhost:8080/enets/processUmid.jsp";
$mid = "947773019";
$gw_url = "https://test.enets.sg/enets2/PaymentListener.do";
$tid = "127.0.0.1";
$payment_mode = "CC";
$txn_amount = $amount*100;
$currency_code = "SGD";
$merchant_txn_ref = date("Y-m-d") . " "  . date('H:i:s') . "." .  $orders;
$submission_mode = "B";
$merchant_cert_id = 13;
$pan = $_POST['pan'];
$expiry_date =  $_POST['expiry_date'];
$payment_type = "SALE";
$name = $_POST['name'];
$cvv = $_POST['cvv'];
$stan = "";
$invoice = $orders;
$notify_url = "https://test.enets.sg/umapi/notify.jsp";
$post_url = "https://test.enets.sg/umapi/post.jsp";
$success_url = "http://www.ua-mktg.com/humming/cart/eshop/checkout/success/";
$failure_url = "http://www.ua-mktg.com/humming/cart/eshop/checkout/review/fail";



$main = "
<form name='txnForm' id='txnForm' action='http://localhost:8080/enets/processUmid.jsp' method='post' onLoad=alert('');>


<div style='display:none;'>
<input type='text' name='gw_url' size='40' value='$gw_url'/><br/>
<input type='text' name='mid' value='$mid'/><br/>
 TID:  <input type='text' name='tid' value='$tid'/><br/>
 Payment Mode: <input type='text' name='payment_mode' value='$payment_mode'/> <br/>
 Amount:  <input type='text' name='txn_amount' value='$txn_amount'/><br/>
 Currency Code:  <input type='text' name='currency_code' value='$currency_code'/><br/>
 Merchant Txn Ref:  <input type='text' name='merchant_txn_ref' value='$orders'/><br/>
 Submission Mode:  <input type='text' name='submission_mode' value='$submission_mode'/><br/>
 Merchant Cert ID:  <input type='text' name='merchant_cert_id' value='$merchant_cert_id'/><br/>
 Credit Card:  <input type='text' name='pan' value='$pan'/><br/>
 Expiry(yymm):  <input type='text' name='expiry_date' value='$expiry_date'/><br/>
 Payment Type:  <input type='text' name='payment_type' value='$payment_type'/>
 Name on card:  <input type='text' name='name' value='$name'/><br/>
 CVV:  <input type='text' name='cvv' value='$cvv'/><br/>
 Stan:  <input type='text' name='stan' value='$stan'/><br/>
 Invoice:  <input type='text' name='invoice' value='$invoice'/><br/>
 Notify URL:  <input type='text'  size='40' name='notify_url' value='$notify_url'/><br/>
 Post URL:  <input type='text' name='post_url' size='40' value='$post_url'/><br/>
 Merchant Success URL:  <input type='text' size='40' name='success_url' value='$success_url'/><br/>
 Merchant Failure URL:  <input type='text' size='40' name='failure_url' value='$failure_url'/><br/>
</div>

<div class='message'>System will redirect to enets gateway to complete the payment. This may take up to 1 minute time. Please do not press the 'back' or 'refresh' button during the process.</div>
<br/><br/>
	<INPUT type=submit value='Proceed to eNets' class='gray_btn' name=submit>





</form>

";

return $main;
}



/////////////////////////////////////////////////////////////

function generate_order_items($order, $product_type, $order_delivery)
{
  global $php5Session;
  global $user;
  	
    $max = $php5Session->getVar('counter');	
	$product = new Product(); 
	$addon_product = new Product;
	$cart = new Cart();
	$sp = new SAP_order();
	$coupon = new Coupon;
	$total = 0;
	$line = 0;
	$order_item = new Order_item	; 
	
 for ($i=1; $i<$max; $i++)
 {

    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i));	
    

    if ($product->product_type == $product_type)
	{
      $line++;
	  $qty = $php5Session->getVar('qty'.$i); 
  	  $sku = $product->sku;
	  $name = $product->name;

	  $rp =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $i );
	  $rate = $rp['product_n_addon'];
      $total_rate = $qty * $rate;	  
	  				 	  
	  $order_item->order_id=$order->order_id	; 

	  
	  $order_item->item_number= $line;    // item no -> lines of data
	  $order_item->product_id=$product->product_id	;    // 
	  $order_item->material =  $product->sku; $product->sku; /// material	  
	  $order_item->sku = $product->sku; /// material
	  $order_item->qty = $qty;
	  $order_item->occasion = $product->get_occasions( $php5Session->getVar('pid'.$i) ) ;
	  $order_item->free_of_charge_indicator = 0;
	  $order_item->condtype1 = 'PR00';  /// PR00 ?
	  $order_item->unit_price = $product->price;                            
	  
//////////////////////////////// discount handling	
      if ($product->discount_value > 0)
	  {
	   switch ($product->discount_type )
	   {
	     case '1' :   $order_item->condtype2  =   "ZD02";   break;
	     case '2' :   $order_item->condtype2 =   "ZD03";  break;	  	  
	   }	  		  
	    $order_item->discount = $product->discount_value;   
		  
	  }
	  else
	  {
	    $order_item->condtype2 = '';  
	    $order_item->discount = 0;   
	  }

////////////////////////////// evoucher handling	  
	  $order_item->evoucher= $php5Session->getVar('coupon_code')	; 	  
	  $coupon->loadData(add_prefix('coupon'), 'coupon_code' ,  $php5Session->getVar('coupon_code'));		    
	  switch ($coupon->discount_type)
	  {
	   case '1' :   $order_item->evoucher_value =   ((100 - $coupon->value)/100)* $product->price;  break;
	   case '2' :   $order_item->evoucher_value =   $coupon->value;  break;	  
	  
	  }

//////////////////////////////// SAP requirement, record delivery surcharge to first item	 
      if ($line == 1)
	  { 	    
	    $order_item->other_surcharge_type = "ZS03";      
	    $order_item->other_surcharge_amount  = $order_delivery->surcharge;     
	  }
	  else
	  {
	    $order_item->other_surcharge_type = "";      
	    $order_item->other_surcharge_amount  = "";  		  
	  }

	  $order_item->redemption_promo_id = 0;  
	  $order_item->loyalty_points = 0;	  	  
	  
	  if ($php5Session->getVar('addon'.$i))
	  {
	    $order_item->sp_indicator =   1;
        $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i));			
  	    $order_item->addon_item_number = $line ;  // item number		
  	    $order_item->addon_product_id = $addon_product->product_id ;
	    $order_item->addon_sku = $addon_product->sku ;
	    $order_item->addon_qty = $qty;
	    $order_item->addon_product = 1;		
	    $order_item->material = sp_number(); 		
		////////////// add up to the unit price
	    $order_item->unit_price = $order_item->unit_price + $addon_product->price;						  
	  }	  
	  else
	  {
	    $order_item->sp_indicator =   0;		  
  	    $order_item->addon_product_id = 0;
	    $order_item->addon_sku = 0 ;
	    $order_item->addon_qty =0;
	    $order_item->addon_product = 0;	
	  } 
			
	   $order_item->addDB(add_prefix('order_item'));				
/////////////////////////////////////////////////////////////////   pump order value
       $sap = new SAP_order();
       $order->sales_order_number = sales_order_number($product->project_id);
       $order->project_id = 	    $product->project_id;
	   $order->occasion = $order_item->occasion ;
	   $order->updateDB(add_prefix('order'), 'order_id', $order->order_id );
	}
 }
 
}

function generate_order($product_type, $i)
{

  global $user;
  global $order_delivery;
  global $php5Session;    
	//////////////////////////   generate order
	$order = new Order(); 
	$order->sales_doc_type = get_sales_doc_type($product_type) ; 
	$order->order_date = date("Y-m-d") ; 	
//	$order->sales_order_number = sales_order_number($product->product_type, $product->get_occasions() );  /////  how to indentify?
	$order->sales_organization = "2000" ;
	$order->distribution_channel = "13" ;
	$order->division = get_division($product_type) ;	
	$order->account_group = "Z002";
	$order->user_id =  $user->user_id;	
	$order->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
	$order->title = $php5Session->getVar('tbl_user_title' );
	$order->name = $php5Session->getVar('tbl_user_name' );
	$order->block = $php5Session->getVar('tbl_user_block' );
	$order->unit = $php5Session->getVar('tbl_user_unit' );
	$order->building = $php5Session->getVar('tbl_user_building' );
	$order->address1 = $php5Session->getVar('tbl_user_address1');
	$order->address2 = $php5Session->getVar('tbl_user_address2' );
	$order->address3 = $php5Session->getVar('tbl_user_address3' );
	$order->address4 = $php5Session->getVar('tbl_user_address4' );		
	$order->postcode = $php5Session->getVar('tbl_user_postcode' );
	$order->city = $php5Session->getVar('tbl_user_city' );
	$order->country = $php5Session->getVar('tbl_user_country' );;
	$order->telephone1 = $php5Session->getVar('tbl_user_telephone1' );
	$order->telephone2 = $php5Session->getVar('tbl_user_telephone2' );
	$company = $php5Session->getVar('tbl_user_company');
	$order->customer_group = ($company ) ? '1' : '2';
	$order->payment_id = 0;
	$order->tax_code = 1;
	$order->contact_person_code =$order->sold_to_party_no;
	$order->contact_person_name = $order->name ;
	$order->gender = $user->gender;
	$order->contact_telephone1= '';
	$order->contact_telephone2 = "";
	$order->email = $user->email;
	$order->order_source = "I";
	$order->spcode = "";
	$order->ssid = "IM6";
	$order->project_id = ''; //////////////////   pump later in order item creation
	$order->created_by='';   ////////////////// 
	$order->approved_by = 'IM6'; ////////////       
	$order->reference_no='';  //////////////   for order status check,   pump later in order creation  

	$order->delivery_id =	$order_delivery->order_delivery_id;	
	$order->addDB(add_prefix('order'));	
	$order->updateID('reference_no');	
	$order->reference_no =  "5" . sprintf("%05s",$order->reference_no );
	$order->updateID('order_id');
	$c =  $php5Session->getVar('order_id')		;
	if ($c != '')
	$c = $c . ",";
	$php5Session->setVar('order_id', $c .  $order->order_id);																														
//	$order->showvariables();
	 
	return $order;
}

function generate_order_delivery($i)
{
	
  global $php5Session;
  global $user;
  $order_delivery = new Order_delivery();
  $order_delivery->user_id =   $user->user_id;
  $order_delivery->from_date =   $php5Session->getVar('delivery_from_date' . $i);
  $order_delivery->to_date =   $php5Session->getVar('delivery_to_date' . $i);
  $delivery_time = new Delivery_time();
  $delivery_time->loadData(add_prefix('delivery_time' ), 'delivery_time_id',   $php5Session->getVar('delivery_time' . $i) );
  $order_delivery->delivery_time =  dispplay_time(  $delivery_time->from_time) . " - " . dispplay_time(  $delivery_time->to_time);
  $order_delivery->from_message =  $php5Session->getVar('message_sender' . $i);
  $order_delivery->to_message =  $php5Session->getVar('message_receiver' . $i);
  $order_delivery->message =  $php5Session->getVar('message_content' . $i);
  $order_delivery->call_before_delivery =  $php5Session->getVar('call_before_delivery' . $i);
  $order_delivery->avoid_lunch =  $php5Session->getVar('avoid_lunch' . $i);
  if (  $order_delivery->call_before_delivery)
    $order_delivery->special_instruction .= "Call before delivery.
	";

  if (  $order_delivery->avoid_lunch)
    $order_delivery->special_instruction .= "Avoid lunch hour.
	";


	$order_delivery->shipto_party_no = "";
	$order_delivery->shipto_title = $php5Session->getVar('shipping_title' . $i);
	$order_delivery->shipto_name =  $php5Session->getVar('shipping_name' . $i);
	$order_delivery->shipto_company =  $php5Session->getVar('shipping_company' . $i);
	$order_delivery->shipto_block = $php5Session->getVar('shipping_block' . $i);
	$order_delivery->shipto_unit = $php5Session->getVar('shipping_unit' . $i);
	$order_delivery->shipto_building = $php5Session->getVar('shipping_building' . $i);
	$order_delivery->shipto_address1 = $php5Session->getVar('shipping_address1' . $i);
	$order_delivery->shipto_address2	= $php5Session->getVar('shipping_address2' . $i);										
	$order_delivery->shipto_address3 = $php5Session->getVar('shipping_address3' . $i);
	$order_delivery->shipto_postcode = $php5Session->getVar('shipping_postcode' . $i);
	$order_delivery->shipto_country =  $php5Session->getVar('shipping_country' . $i);
	$order_delivery->shipto_city =  $php5Session->getVar('shipping_city' . $i);	
	$order_delivery->shipto_telephone1 =  $php5Session->getVar('shipping_telephone1' . $i);
	$order_delivery->shipto_telephone2 =  $php5Session->getVar('shipping_telephone2' . $i);
	$order_delivery->shipto_email =  $php5Session->getVar('shipping_email' . $i);
	$order_delivery->shipto_gender = $php5Session->getVar('shipping_gender' . $i);
	
	
  $order_delivery->surcharge =   $delivery_time->surcharge ;
  $order_delivery->addDB( add_prefix('order_delivery') ); 
  $order_delivery->updateID('order_delivery_id' ); 
  

//  $order_delivery->showvariables();	
  return $order_delivery;	
}

function have_product_type_in_cart($product_type)
{
	
	global $php5Session;
	$max = $php5Session->getVar('counter');	
	$product = new Product(); 
	$addon_product = new Product;
	$cart = new Cart();
	$total = 0;
	
    for ($i=1; $i<$max; $i++)
    {
      $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i));	 
	  if ($product->product_type == $product_type)
	  return 1;
    }

	   return 0;
	
}


?>