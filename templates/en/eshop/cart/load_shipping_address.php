<?php
include_once 'includes/select_input.php';

$cart=new Cart();
//$cart->showvariables();
///////////////////////////////////  load from adddress book
$user = new User();
  
$total_recipient = 	$php5Session->getVar('total_recipient');
$ad = $php5Session->getVar('recipient_address_book_id' . $r);   
$user_id = $php5Session->getVar('user_id' );

if(!$user_id) $php5Session->setVar('user_type', 'Guest' ); 

$user->title = $php5Session->getVar('shipping_title' . $d);
$user->surname = $php5Session->getVar('shipping_surname' . $d);
$user->name = $php5Session->getVar('shipping_name' . $d);
$user->email = $php5Session->getVar('shipping_email' . $d);
$user->pre_telephone1 = $php5Session->getVar('shipping_pre_telephone1' . $d);
$user->mid_telephone1 = $php5Session->getVar('shipping_mid_telephone1' . $d);
$user->telephone1 = $php5Session->getVar('shipping_telephone1' . $d); 
$user->pre_telephone2 = $php5Session->getVar('shipping_pre_telephone2' . $d);
$user->mid_telephone2 = $php5Session->getVar('shipping_mid_telephone2' . $d);
$user->telephone2 = $php5Session->getVar('shipping_telephone2' . $d); 
$user->pre_fax = $php5Session->getVar('shipping_pre_fax' . $d);
$user->mid_fax = $php5Session->getVar('shipping_mid_fax' . $d);
$user->fax = $php5Session->getVar('shipping_fax' . $d); 
$user->company = $php5Session->getVar('shipping_company' . $d); 
$user->block = $php5Session->getVar('shipping_block' . $d); 
$user->unit = $php5Session->getVar('shipping_unit' . $d); 
$user->building = $php5Session->getVar('shipping_building' . $d); 
$user->address1 = $php5Session->getVar('shipping_address1' . $d); 
$user->address2 = $php5Session->getVar('shipping_address2' . $d); 
$user->city = $php5Session->getVar('shipping_city' . $d);
if(trim($user->city) == '')  {
  $user->city = "Singapore";
}
$user->state = $php5Session->getVar('shipping_state' . $d); 
if(trim($user->state) == '')  {
  $user->state = "Singapore";
}

$user->postcode = $php5Session->getVar('shipping_postcode' . $d); 
$user->country = $php5Session->getVar('shipping_country' . $d); 

$smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country' . $d, 'country_code', 'country', $user->country ) );	
$smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender' . $d, 'gender', 'gender', $user->gender) );	
$smarty->assign('title', gen_select(add_prefix('title'), 'sorting', "title".$d, 'title', 'title', $user->title, true) );  
//echo $r ;
if ($user->name == '') {		
  if ($r == 0) {
      $address_book = new User();
      $address_book->loadData(add_prefix('user'),'user_id', $php5Session->getVar('user_id') );  
  }	else if ($ad){	  
      $address_book = new Address_book();	  
      $address_book->loadData(add_prefix('address_book'),'address_book_id', $ad );

      $name = $php5Session->getVar('shipping_name' . $d);
	  $remarks = "*this will update current address book";  

	 $php5Session->setVar('shipping_title'.$d  , $address_book->title );		  
	 $php5Session->setVar('shipping_name'.$d  ,$address_book->name );
	 $php5Session->setVar('shipping_surname'.$d  ,$address_book->surname );		 
	 $php5Session->setVar('shipping_email'.$d  , $address_book->email );		  
	 $php5Session->setVar('shipping_pre_telephone1'.$d  , $address_book->pre_telephone1 );	
	 $php5Session->setVar('shipping_mid_telephone1'.$d  , $address_book->mid_telephone1 );			 		  
	 $php5Session->setVar('shipping_telephone1'.$d  , $address_book->telephone1 );		 

	 $php5Session->setVar('shipping_pre_telephone2'.$d  , $address_book->pre_telephone2 );	
	 $php5Session->setVar('shipping_mid_telephone2'.$d  , $address_book->mid_telephone2 );			  
	 $php5Session->setVar('shipping_telephone2'.$d  , $address_book->telephone2 );	

	 $php5Session->setVar('shipping_pre_fax'.$d  , $address_book->pre_fax );	
	 $php5Session->setVar('shipping_mid_fax'.$d  , $address_book->mid_fax );			  
	 $php5Session->setVar('shipping_fax'.$d  , $address_book->fax );	
	 
	 $php5Session->setVar('shipping_company'.$d  ,  $address_book->company );	
	 $php5Session->setVar('shipping_block'.$d  , $address_book->block  );	
	 $php5Session->setVar('shipping_unit'.$d  , $address_book->unit );			 		 
	 $php5Session->setVar('shipping_building'.$d  , $address_book->building );	
	 $php5Session->setVar('shipping_address1'.$d  , $address_book->address1 );	
	 $php5Session->setVar('shipping_address2'.$d  , $address_book->address2 );			 
	 $php5Session->setVar('shipping_city'.$d  , $address_book->city );	
	 $php5Session->setVar('shipping_state'.$d  , $address_book->state );	
	 $php5Session->setVar('shipping_postcode'.$d  , $address_book->postcode );	
	 $php5Session->setVar('shipping_country'.$d  , $address_book->country );	
}

$user->title = $php5Session->getVar('shipping_title' . $d);
$user->surname = $php5Session->getVar('shipping_surname' . $d);
$user->name = $php5Session->getVar('shipping_name' . $d);
$user->email = $php5Session->getVar('shipping_email' . $d);
$user->pre_telephone1 = $php5Session->getVar('shipping_pre_telephone1' . $d);
$user->mid_telephone1 = $php5Session->getVar('shipping_mid_telephone1' . $d);
$user->telephone1 = $php5Session->getVar('shipping_telephone1' . $d); 
$user->pre_telephone2 = $php5Session->getVar('shipping_pre_telephone2' . $d);
$user->mid_telephone2 = $php5Session->getVar('shipping_mid_telephone2' . $d);
$user->telephone2 = $php5Session->getVar('shipping_telephone2' . $d); 
$user->pre_fax = $php5Session->getVar('shipping_pre_fax' . $d);
$user->mid_fax = $php5Session->getVar('shipping_mid_fax' . $d);
$user->fax = $php5Session->getVar('shipping_fax' . $d); 
$user->company = $php5Session->getVar('shipping_company' . $d); 
$user->block = $php5Session->getVar('shipping_block' . $d); 
$user->unit = $php5Session->getVar('shipping_unit' . $d); 
$user->building = $php5Session->getVar('shipping_building' . $d); 
$user->address1 = $php5Session->getVar('shipping_address1' . $d); 
$user->address2 = $php5Session->getVar('shipping_address2' . $d); 
$user->city = $php5Session->getVar('shipping_city' . $d);
if(trim($user->city) == '')  {
  $user->city = "Singapore";
}
$user->state = $php5Session->getVar('shipping_state' . $d); 
if(trim($user->state) == '')  {
  $user->state = "Singapore";
}

$user->postcode = $php5Session->getVar('shipping_postcode' . $d); 
$user->country = $php5Session->getVar('shipping_country' . $d); 
$loaded_from_session = ($user->name) ? 1 : 0;

if ($loaded_from_session  ) {
//echo $php5Session->getVar('telephone');
//  echo $php5Session->getVar('tbl_user_country') . $user->country;	 
  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country' . $d, 'country_code', 'country', $user->country ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender' . $d, 'gender', 'gender', $user->gender) );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'sorting', "title".$d, 'title', 'title', $user->title, true) );
} else {

  $smarty->assign('country', gen_select(add_prefix('country'), 'country', 'country' . $d, 'country_code', 'country', 'SG' ) );	
  $smarty->assign('gender', gen_select(add_prefix('gender'), 'gender', 'gender' . $d, 'gender', 'gender', '') );	
  $smarty->assign('title', gen_select(add_prefix('title'), 'title', "title" . $d, 'title', 'title', '', true) );
  
  $user->company = $php5Session->getVar('record_shipping_company'); 
  $user->block = $php5Session->getVar('record_shipping_block'  ); 
  $user->unit = $php5Session->getVar('record_shipping_unit'  ); 
  $user->building = $php5Session->getVar('record_shipping_building'  ); 
  $user->address1 = $php5Session->getVar('record_shipping_address1'  ); 
  $user->address2 = $php5Session->getVar('record_shipping_address2'  );   
  $user->city = $php5Session->getVar('record_shipping_city'  );  
  $user->state = $php5Session->getVar('record_shipping_state'  );   	
  $user->postcode = $php5Session->getVar('record_shipping_postcode'  );  

  }

  $smarty->assign('pre_telephone1', $php5Session->getVar('shipping_pre_telephone1' . $d) );
  $smarty->assign('mid_telephone1', $php5Session->getVar('shipping_mid_telephone1' . $d) );
  $smarty->assign('pre_telephone2', $php5Session->getVar('shipping_pre_telephone2' . $d) );
  $smarty->assign('mid_telephone2', $php5Session->getVar('shipping_mid_telephone2' . $d) );
  $smarty->assign('pre_fax', $php5Session->getVar('shipping_pre_fax' . $d) );
  $smarty->assign('mid_fax', $php5Session->getVar('shipping_mid_fax' . $d) );    
  
   
 // $php5Session->setVar('delivery_info', $user);
  
	if  ( $php5Session->getVar('recorded_address'  ) == $id ){
	  $smarty->assign( 'remember_checked', 'checked' );	 
	}	
}

$smarty->assign('obj', $user );
if ($r == 0) {
  $smarty->assign('m1', '*' );	
  $smarty->assign('m2', 'required' );	  
}
?>