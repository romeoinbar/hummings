<?php
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i));
    $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i));		
	$qty = $php5Session->getVar('qty'.$i); 
	
	$sku = $product->sku;
	$name = $product->name;
	$rate =  $cart->cart_get_rate($product,$addon_product);
    $total_rate = $qty * $rate;
    
	//////////////////////////   generate order
	$order = new Order(); 
	$order->sales_doc_type = get_sales_doc_type($product->product_type) ; 
	$order->order_date = date("Y-m-d") ; 	
	$order->sales_order_number = sales_order_number($product->product_type, $product->get_occasions() );  /////  how to indentify?
	$order->sales_organization = "2000" ;
	$order->distribution_channel = "13" ;
	$order->division = get_division($product->product_type) ;	
	$order->account_group = "Z002";
	$order->user_id =  $user->user_id;	
	$order->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
	$order->title = $php5Session->getVar('tbl_user_title');
	$order->name = $php5Session->getVar('tbl_user_name');
	$order->block = $php5Session->getVar('tbl_user_block');
	$order->unit = $php5Session->getVar('tbl_user_unit');
	$order->building = $php5Session->getVar('tbl_user_building');
	$order->address1 = $php5Session->getVar('tbl_user_address1');
	$order->address2 = $php5Session->getVar('tbl_user_address2');
	$order->address3 = $php5Session->getVar('tbl_user_address3');
	$order->address4 = $php5Session->getVar('tbl_user_address4');		
	$order->postcode = $php5Session->getVar('tbl_user_postcode');
	$order->city = $php5Session->getVar('tbl_user_postcode');
	$order->country = $php5Session->getVar('tbl_user_country');;
	$order->telephone1 = $php5Session->getVar('tbl_user_telephone1');
	$order->telephone2 = $php5Session->getVar('tbl_user_telephone2');
	$order->customer_group = ($user->company) ? '1' : '2';
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
	$order->ssid = "";
	$order->project_id = ''; //////////////////   how to indentify?
	$order->created_by='';   //////////////////   how to indentify?
	$order->approved_by = ''; ////////////         how to indentify?
	$order->reference_no='';  //////////////       how to indentify?   
	$order->update_addres_indicator=0;
	
	

	$order->shipto__party_no = "";
	$order->shipto_title = $php5Session->getVar('shipping_tbl_user_title');
	$order->shipto_name =  $php5Session->getVar('shipping_tbl_user_name');
	$order->shipto_company =  $php5Session->getVar('shipping_tbl_user_company');
	$order->shipto_block = $php5Session->getVar('shipping_tbl_user_block');
	$order->shipto_unit = $php5Session->getVar('shipping_tbl_user_title');
	$order->shipto_bulding = $php5Session->getVar('shipping_tbl_user_bulding');
	$order->shipto_address1 = $php5Session->getVar('shipping_tbl_user_address1');
	$order->shipto_address2	= $php5Session->getVar('shipping_tbl_user_address2');										
	$order->shipto_address3 = $php5Session->getVar('shipping_tbl_user_address3');
	$order->shipto_postcode = $php5Session->getVar('shipping_tbl_user_postcode');
	$order->shipto_country =  $php5Session->getVar('shipping_tbl_user_country');
	$order->shipto_telephone1 =  $php5Session->getVar('shipping_tbl_user_telephone1');
	$order->shipto_telephone2 =  $php5Session->getVar('shipping_tbl_user_telephone2');
	$order->shipto_email =  $php5Session->getVar('shipping_tbl_user_email');
	$order->shipto_gender = $php5Session->getVar('shipping_tbl_user_gender');
	$order->delivery_id =	$order_delivery->order_delivery_id;	
?>