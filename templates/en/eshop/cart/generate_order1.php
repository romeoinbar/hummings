<?php
include_once 'includes/send_email.php';
include_once 'includes/random_code.php';
include_once 'classes/delivery.class.php';
include_once 'classes/sapfields.class.php';
include 'includes/generate.php';

$debug_mode= 0;
$userID = $php5Session->getVar('user_id');	
$user_id = $php5Session->getVar('user_id');
$order_created = $php5Session->getVar('order_id');	
$php5Session->setVar('latest_total', @$_POST['total']);	

	
//if ($order_created)		{}
//else
{

//////////////////////////////////////////////////////////  create user
 $php5DB_en->setQuery("SELECT * FROM #__user WHERE user_id = ".$php5Session->getVar('user_id'));
 $php5DB_en->loadObject($user); 
  
    $php5DB_en->setQuery("SELECT count(order_id) FROM #__order WHERE user_id=".$php5Session->getVar('user_id')." AND order_id<".$php5Session->getVar('orderID'));
	$tmp = $php5DB_en->loadResult();
	$update_indicator = ($tmp>0)?1:0;
	//$update_indicator = check_update_indicator( $php5Session->getVar('user_id'));
/////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////////////////////////////////////////////////////////	
    //if (!$debug_mode)
    //generate_customer_file( $user->user_id, $update_indicator);	
	
	 
  
	 for ($d=0; $d<20; $d++)
	 {
 		$php5Session->setVar('delivery_paid' . $d, 0);		 
	 }
	
$discounted = 0;
			$list_ID = "";
            if (!$php5Session->getVar('existed')){
			   if (have_product_type_in_cart(1)){
	            $order = generate_order(1);
				$list_ID .= $php5Session->getVar('orderID').',';
               }
               if (have_product_type_in_cart(2)){
	            $order = generate_order(2);
				$list_ID .= $php5Session->getVar('orderID').',';
               }
              if (have_product_type_in_cart(4)){
	           $order = generate_order(4);
			   $list_ID .= $php5Session->getVar('orderID').',';
              }
             if (have_product_type_in_cart(5)){
	           $order = generate_order(5);
			   $list_ID .= $php5Session->getVar('orderID').',';
             }
			 $php5Session->setVar('existed',1);
			 $php5Session->setVar('list_ID', substr($list_ID,0, strlen($list_ID)-1));
			}


////////////////////////////////////////////////////////// update coupon  
	  $coupon= new Coupon();
	  $coupon->loadData(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
	  $coupon->redemption_date = date('Y-m-d');  
      $coupon->redeem_by = $user->user_id;    
	  $coupon->updateDB(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
		   
}

$main = send_enets(@$_POST['total'],$php5Session->getVar('order_id')	 );




function loaduser() {
	global $php5Session;
	global $user;
	$user->
	$user->title = $php5Session->getVar('tbl_user_title');	
	$user->surname = $php5Session->getVar('tbl_user_surname');
	$user->name = $php5Session->getVar('tbl_user_name');	
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
	$user->country = $php5Session->getVar('tbl_user_' . 'country');	
	$user->email = $php5Session->getVar('tbl_user_' . 'email');	
	$user->telephone1 = $php5Session->getVar('tbl_user_' . 'telephone1');	
	$user->telephone2 = $php5Session->getVar('tbl_user_' . 'telephone2');	
	$user->fax = $php5Session->getVar('tbl_user_' . 'fax');	
}



function send_enets($amount,$orders)
{
global $php5Session;


$process_url = "http://120.50.45.210:8080/enets/processUmid.jsp";
$mid = "947773019";
$gw_url = "https://test.enets.sg/enets2/PaymentListener.do";
$tid = "127.0.0.1";
$payment_mode = "CC";
$txn_amount = $amount*100;
$currency_code = "SGD";
$merchant_txn_ref = date("Y-m-d") . " "  . date('H:i:s') . "." .  $orders;
$submission_mode = "B";
$merchant_cert_id = 13;
$pan = @$_POST['pan'];
$expiry_date =  @$_POST['expiry_date'];
$payment_type = "SALE";
$name = @$_POST['name'];
$cvv = @$_POST['cvv'];
$credit_card_type =  @$_POST['credit_card_type'];
$stan = "";
$invoice = $orders;
$notify_url = "http://120.50.45.210:8080/enets/notify.jsp?ip=" . getRealIpAddr() . "&order_id=" . $php5Session->getVar('order_id') ;
$post_url = "https://120.50.45.210:8080/enets/post.jsp";

//$success_url = "http://120.50.45.210:8080/enets/success.jsp?ip=" . getRealIpAddr() . "&order_id=" . $php5Session->getVar('order_id') ;
$success_url = "https://120.50.45.210/cart/eshop/checkout/success/";
$failure_url = "https://120.50.45.210/cart/eshop/checkout/review/fail";


/**
$main = "
<form name='txnForm' id='txnForm' action='$process_url' method='post' onLoad=alert('');>


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
 Params:  <input type='text' size='40' name='success_url_params' value='ip=". getRealIpAddr() ."&order=$orders'/><br/>
</div>

<div class='message'>System will redirect to enets gateway to complete the payment. This may take up to 1 minute time. Please do not press the 'back' or 'refresh' button during the process.</div>
<br/><br/>
	<INPUT type=submit value='Proceed to eNets' class='gray_btn' name=submit>
</form>

";
**/
$ids = explode(",", $orders);
$order = new Order();
foreach ($ids as $id)
{
       $order->loadData(add_prefix('order'), 'order_id', $id );
       $order->payment_type =$payment_type;
       $order->credit_card_type =$credit_card_type;	   
       $order->name_on_card =$name;	   
       $order->credit_card_no =$pan;	   
       $order->expiry_date =$expiry_date;	   
       $order->cvv =$cvv;	     	   	   	   	   	   
	   $order->updateDB(add_prefix('order'), 'order_id', $id );
}
	   
global $php5WebPath;
$main = "<META HTTP-EQUIV=Refresh CONTENT='2000; URL=$php5WebPath/cart/eshop/checkout/success/'>";

return $main;
}



/////////////////////////////////////////////////////////////

function generate_order_items($order, $product_type, $order_delivery, $d, $r, $delivery_line )
{
  global $php5Session;
  global $user;
  global $discounted;
  global $debug_mode;
  global $php5DB_en;
    	
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
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i) );
    $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i));				
	$selected_recipient = 	 $php5Session->getVar('selected_recipient'.$i);

    if (($product->product_type == $product_type) AND ($selected_recipient == $r) )
	{
      $line++;
	  $qty = $php5Session->getVar('qty'.$i); 
  	  $sku = $product->sku;
	  $name = $product->name;
	  $rp =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $i );
				 	   $discounted += $rp['discounted']; 
	  $rate = $rp['product_n_addon'];
      $total_rate = $qty * $rate;	  
	 	  
	  $order_item->order_id=$order->order_id	; 
	  $order_item->delivery_id=$order_delivery->order_delivery_id	; 
	  $order_item->delivery_line= sprintf("%03s",$delivery_line);  	
	  	  
	  $order_item->item_number= sprintf("%03s",$line);       // item no -> lines of data
	  $order_item->product_id=$product->product_id	;    // 
	  $order_item->material =  $product->sku; /// material	  
	  $order_item->sku = $product->sku; /// material
	  $order_item->qty = $qty;
	  $order_item->occasion = $product->get_occasions( $php5Session->getVar('pid'.$i) ) ;
	  $order_item->free_of_charge_indicator = 0;
	  $order_item->condtype1 = 'PR00';  /// PR00 ?
	  $order_item->unit_price = $product->price;                            

	    $order_item->condtype2 = $rp['discount_type'];  
	    $order_item->discount = $rp['discount_value'];   
//////////////////////////////// discount handling	


////////////////////////////// promo - coupon code 
	    $order_item->promotions_id= $php5Session->getVar('coupon_code')	; 	  


//	   $order_item->showVariables() ;	
	   
//////////////////////////////// SAP requirement, record delivery surcharge to first item	
	   $order_item->other_surcharge_type = "ZS03";     
       $delivery_paid = $php5Session->getVar('delivery_paid' . $d);
	   if ($delivery_paid!= 1){
		$delivery_time = new Delivery_time();
		$delivery_time->loadData(add_prefix('delivery_time'), 'delivery_time_id', $order_delivery->delivery_time_id);
		$applied_coupon_code = $php5Session->getVar('coupon_code');
		$coupon = new Coupon();
		$coupon->loadData( add_prefix('coupon'), 'coupon_code' , $applied_coupon_code );
		if ($coupon->free_delivery){
			$order_item->other_surcharge_amount = 0;
		} else {
			$order_item->other_surcharge_amount  =get_surcharge($delivery_time, $order_delivery->shipto_postcode);
		}
		
		
		$php5Session->setVar('delivery_paid' . $d, 1);
	   }
	   else{
	    $order_item->other_surcharge_amount  = 0;		   
	   }
 
	  $order_item->redemption_promo_id = 0;  
	  $order_item->loyalty_points = 0;	  	  

/**	  
	  if ($php5Session->getVar('addon'.$i))
	  {
	    $order_item->sp_indicator =   1;
        $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i));			
  	    $order_item->addon_item_number = sprintf("%03s",$line) ;  // item number		
  	    $order_item->addon_product_id = $addon_product->product_id ;
	    $order_item->addon_sku = $addon_product->sku ;
	    $order_item->addon_qty = $qty;
	    $order_item->addon_product = 1;		
	
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
**/
	   $order_item->order_item_id = '' ;	  			
	   $order_item->addDB(add_prefix('order_item'));
	   $order_item->updateID('order_item_id');
	   
	  // Update quantity of products
	   $php5DB_en->setQuery("SELECT quantity FROM #__product WHERE product_id=".$product->product_id);
	   $quantity = $php5DB_en->loadResult();
	   
	   $quantity = $quantity - $qty;
	   
	   $php5DB_en->setQuery("UPDATE #__product SET quantity =".$quantity." WHERE product_id=".$product->product_id);
	   $php5DB_en->query();

	   
	$order_addon = new Order_addon(); 
//	echo "*" .  $php5Session->getVar('total_addon'.$i);
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$i); $a++)
	{
	  $order_item->sp_indicator =   1;
	  $order_item->material = sp_number(); 		  
	  $order_item->updateDB(add_prefix('order_item'), 'order_item_id',  $order_item->order_item_id );
	   				
      $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i . "_" . $a)  );
	  
	  $order_addon->order_id=$order->order_id	; 
	  $order_addon->order_addon_id = '';
	  $order_addon->addon_item_number 	 =  sprintf("%03s",$line);
	  $order_addon->addon_product_id = $php5Session->getVar('addon'.$i . "_" . $a);
	  $order_addon->addon_sku =  	$addon_product->sku ;
	  $order_addon->addon_qty =  	$qty;	
	  $order_addon->order_item_id =  	$order_item->order_item_id;		      	   			  
	  $order_addon->addDB(add_prefix('order_addon'));
	  
	  $order_item->unit_price = $order_item->unit_price  + 		$addon_product->price; 
	  $order_item->updateDB(add_prefix('order_item'), 'order_item_id',  $order_item->order_item_id );	  	  
	}
		   
	   				
/////////////////////////////////////////////////////////////////   pump order value
       $sap = new SAP_order();
       $order->sales_order_number = sales_order_number($product->project_id);
       $order->project_id = 	    $product->project_id; 
	   $order->updateDB(add_prefix('order'), 'order_id', $order->order_id );
	}
 }
 
 return $line;
}

function generate_order($product_type)
{

  global $user;
  global $php5Session;    
  global $debug_mode;  
  global $env; 

	//////////////////////////   generate order
	$order = new Order(); 
	$order->sales_doc_type = get_sales_doc_type($product_type) ; 
	$order->order_date = date("Y-m-d") ; 	
	$order->order_time = date('H:i:s') ; 		
//	$order->sales_order_number = sales_order_number($product->product_type, $product->get_occasions() );  /////  how to indentify?

	$order->ip=@$_REQUEST['ip'];	 
	  
	$order->sales_organization = "2000" ;
	$order->distribution_channel = "13" ;
	$order->division = get_division($product_type) ;	
	$order->account_group = "Z002";
	$order->user_id =  $user->user_id;	
	$order->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
	$order->title = $php5Session->getVar('tbl_user_title' );
	$order->name =  $php5Session->getVar('tbl_user_name' ) . " " .  $php5Session->getVar('tbl_user_surname' );
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
	$order->telephone1 = $php5Session->getVar('tbl_user_pre_telephone1' ) . $php5Session->getVar('tbl_user_mid_telephone1' ) . $php5Session->getVar('tbl_user_telephone1' );
	$order->telephone2 = $php5Session->getVar('tbl_user_pre_telephone2' ) . $php5Session->getVar('tbl_user_mid_telephone2' ) . $php5Session->getVar('tbl_user_telephone2' );
	$company = $php5Session->getVar('tbl_user_company');
	$order->customer_group = ($company ) ? '01' : '02';
	$order->payment_terms = 'PF';	
	$order->payment_id = 0;
	$order->tax_code = 1;
	$order->contact_person_code =$order->sold_to_party_no . "001";
	$order->contact_person_name = $order->name ;
	$order->gender = $user->gender;
	$order->contact_telephone1= $order->telephone1;
	$order->contact_telephone2 =$order->telephone2;
	$order->email = $user->email;
	$order->order_source = "I";
	$order->spcode = "";
	$order->ssid = "IM6";
	$order->project_id = ''; //////////////////   pump later in order item creation
	$order->created_by='';   ////////////////// 
	$order->approved_by = 'IM6'; ////////////       
	$order->reference_no='';  //////////////   for order status check,   pump later in order creation  
	
	$order->evoucher='ZEV'; 	//hardcode ZEV
	$order->evoucher_value= 0; 	//hardcode
	$order->customer_industry_type = "UNSP";	//hardcode unspecified
	$order->kindof = ($env=='smp')?1:0;
//	$order->showvariables();
	$order->addDB(add_prefix('order'));	
	$order->updateID('reference_no');	
	$order->reference_no =  "7" . sprintf("%05s",$order->reference_no );

	$order->updateID('order_id');
	
	$order->updateDB(  add_prefix('order'), 'order_id', $order->order_id);		
	
	$php5Session->setVar('orderID', $order->order_id);
	$c =  $php5Session->getVar('order_id')		;
	if ($c != '')
	$c = $c . ",";
	$php5Session->setVar('order_id', $c .  $order->order_id);																														


	  $coupon= new Coupon();
	  $coupon->loadData(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
      
	  if ($coupon->order_id == '')
	  {
       $coupon->order_id = $order->order_id;    
	  }
	  else
	  {
       $coupon->order_id = $coupon->order_id. ",".$order->order_id;   		  
	  }
	  $coupon->updateDB(add_prefix('coupon'), 'coupon_code', $php5Session->getVar('coupon_code') );
	  

	   $cart = new Cart();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
	   $d = 0;
	   $delivery_line = 0;
	   if ($recipients!= null)
	   {
		   
            foreach ($recipient as $r )
	        {
			   $d++;
			   if (have_product_type_recipient_in_cart($product_type, $r))
               {
				 $delivery_line++; 
			     $order_delivery = generate_order_delivery($d,$delivery_line,$order);		 
		         generate_order_items($order,$product_type,$order_delivery, $d, $r, $delivery_line);
			   }
			}
			
	   }

/////////////////////////////////////////////////
/////////////////////////////////////////////////
    //if (!$debug_mode)
	// 	generate_order_file($order->order_id);  	
	
	 global $php5TemplateFile;
	 global $language;
	 $message = prepare_order($order->order_id,  sprintf($php5TemplateFile, $language, 'eshop', 'cart/order_mail.php'));
     //email_orders($order->email, "Hummings : Order Confirmation " , $message);  		
     //email_orders( 'goto@humming.com.sg' , "Hummings : Order Confirmation " , $message);  		
	// $php5Session->setVar('existed', 1);	   
	return $order;
}

function generate_order_delivery($i,$delivery_line, $order)
{
	
  global $php5Session;
  global $user;
  $order_delivery = new Order_delivery();
  $order_delivery->user_id =   $user->user_id;
  $order_delivery->delivery_line =    sprintf("%03s",$delivery_line);  
  $order_delivery->order_id =   $order->order_id;    
  $order_delivery->from_date =   $php5Session->getVar('delivery_from_date' . $i);
  $order_delivery->to_date =   $php5Session->getVar('delivery_to_date' . $i);
  $order_delivery->delivery_status_sap='N';
  $delivery_time = new Delivery_time();
  $delivery_time->loadData(add_prefix('delivery_time' ), 'delivery_time_id',   $php5Session->getVar('delivery_time' . $i) );
  $order_delivery->delivery_time_id =   $delivery_time->delivery_time_id;  
  $order_delivery->delivery_time =  $delivery_time->caption;
  $order_delivery->delivery_time_code =  $delivery_time->SAP_code;
  $order_delivery->from_message =  $php5Session->getVar('message_sender' . $i) . "\r" . 
                                   $php5Session->getVar('message_sender2' . $i) . "\r" . 
                                   $php5Session->getVar('message_sender3' . $i) . "\r" ."\r" ."\r"    ;
  
  $order_delivery->to_message =  $php5Session->getVar('message_receiver' . $i) . "\r" .
                                 $php5Session->getVar('message_receiver2' . $i) . "\r" .
								 $php5Session->getVar('message_receiver3' . $i) . "\r" ;
  
  $order_delivery->message =  $php5Session->getVar('message_content' . $i) . "\r" . 
                              $php5Session->getVar('message_content2' . $i) . "\r" . 
                              $php5Session->getVar('message_content3' . $i) . "\r" . 
							  $php5Session->getVar('message_content4' . $i) . "\r" . 
							  $php5Session->getVar('message_content5' . $i) . "\r" . 
							  $php5Session->getVar('message_content6' . $i) . "\r"   ;
  $order_delivery->call_before_delivery =  $php5Session->getVar('call_before_delivery' . $i);
  $order_delivery->avoid_lunch =  $php5Session->getVar('avoid_lunch' . $i);
  if (  $order_delivery->call_before_delivery)
    $order_delivery->special_instruction .= "Call before delivery. ";

  if (  $order_delivery->avoid_lunch)
    $order_delivery->special_instruction .= "Avoid lunch hour.";


	$order_delivery->shipto_party_no = "";
	$order_delivery->shipto_title = $php5Session->getVar('shipping_title' . $i);
	$order_delivery->shipto_name =   $php5Session->getVar('shipping_name' . $i) . " " .  $php5Session->getVar('shipping_surname' . $i);
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
	$order_delivery->shipto_state =  $php5Session->getVar('shipping_state' . $i);		
	$order_delivery->shipto_telephone1 =  $php5Session->getVar('shipping_telephone1' . $i);
	$order_delivery->shipto_telephone2 =  $php5Session->getVar('shipping_telephone2' . $i);
	$order_delivery->shipto_email =  $php5Session->getVar('shipping_email' . $i);
	$order_delivery->shipto_gender = $php5Session->getVar('shipping_gender' . $i);
	
	
  $applied_coupon_code = $php5Session->getVar('coupon_code');
   	$coupon = new Coupon();
	$coupon->loadData( add_prefix('coupon'), 'coupon_code' , $applied_coupon_code );
	if ($coupon->free_delivery){
		$order_delivery->surcharge = 0;
	} else {
		$order_delivery->surcharge =   $delivery_time->surcharge ;
	}
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


function have_product_type_recipient_in_cart($product_type, $recipient)
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
	  {
		  $cur_recipient = $php5Session->getVar('selected_recipient'.$i);
		  if ($cur_recipient == $recipient)
	       return 1;
	  }
    }

	   return 0;
	
}
function getSoldToPartyNoNext(){
	global $php5DB_en;
	$php5DB_en->setQuery("SELECT sold_to_party_no FROM #__order WHERE 1 ORDER BY order_id DESC LIMIT 0 , 1");
	$maxNo = $php5DB_en->loadResult();
	//echo $maxNo;
	$str = substr($maxNo, 4, strlen($maxNo));	
	$no = intval($str);
	$str = sprintf("%06s", $no+1);
	return '0007'.$str;
}
?>