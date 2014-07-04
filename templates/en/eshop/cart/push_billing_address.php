<?php
include_once 'includes/select_input.php';
include 'includes/send_email.php';
$user = new User();

$user->loadData(add_prefix('user'), 'user_id',  $php5Session->getVar('user_id') );
$user->bindRequest();
$user->updateDB(add_prefix('user'), 'user_id',  $php5Session->getVar('user_id') );
$user->post_to_session(add_prefix('user'), '');

$php5Session->setVar('user_name', $_POST['name'] );

$user->email = $php5Session->getVar('tbl_user_email');	
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

$user->telephone1 = $php5Session->getVar('tbl_user_' . 'telephone1');	
$user->telephone2 = $php5Session->getVar('tbl_user_' . 'telephone2');	
$user->fax = $php5Session->getVar('tbl_user_' . 'fax');	
$company = $php5Session->getVar('tbl_user_company');
$user->customer_group =  ($company ) ? '01' : '02';	

$user_id = $php5Session->getVar('user_id' );
if (!$user_id) {  	  
	  $user->password = md5("abc123"); 
	  $user->email = $php5Session->getVar('tbl_user_email');				
	  $user->addDB(add_prefix('user'));	
	  $message =  $user->mysql_error_message();
	  
	  $duplicate = strstr($message ,"key 'email'");
	
	  if($duplicate)
	  {
		  /* $message = "Your Email is found in the record. Plase <a href='". sefBuild($php5WebPath, "index.php?o=eshop&m=register" , 1) ."/'>log in</a> to proceed.
		   <br/> *<i>You can use the password retrieve function by clicking on 'Forgot your password?' if you are unable to remember your password.</i>";*/
		   $message = null;
	   }
					  
	  
	  if ($message == 'success')  $message = null;
	  $php5Session->setVar('message', $message );

	  if ($message ==  '')
	  {
	 	 $php5DB_en->setQuery("SELECT user_id FROM #__user WHERE email='".$user->email."'");		
		$exist_id = $php5DB_en->loadResult();
		if (!$exist_id){
			$user->password = md5("abc123"); 
			$user->email = $php5Session->getVar('tbl_user_' . 'email');	
			
			$smarty->assign('email_to', $user->email);	
			$smarty->assign('password', "abc123" );	
			
			$tpl =  $php5RootPath.'/templates/en/eshop/member_welcome_email.tpl';
			$content =  $smarty->fetch($tpl);		
			
			email_register_user($user->email, $user->password, $content); 
			
			$user->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
			$user->contact_person_code =  '7' . sprintf("%06s",$user->user_id) . "001";
				
			$user->customer_industry_type =  "UNSP";
			$user->payment_terms =  "CC";		
			$user->tax_code =  "1";
			$user->ssid =  "IM6";		
			
			$user->updateID('user_id');	
											  				  				  				  
		} else{
			$user->user_id = $exist_id;
			$user->sold_to_party_no =  '0007' .  sprintf("%06s",$exist_id);
			$user->contact_person_code =  '7' . sprintf("%06s",$exist_id) . "001";
			$user->customer_group =  "02";
	
			$user->customer_industry_type =  "UNSP";
			$user->payment_terms =  "CC";
			$user->customer_group =  "02";
			$user->tax_code =  "1";
			$user->ssid =  "IM6";	
		}
		if ($user->password=='')
			$user->password == md5("abc123");
		$user->updateDB(add_prefix('user'), 'user_id', $user->user_id);	
		
		$php5Session->setVar('user_id', $user->user_id );
		$php5Session->setVar('user_name', $user->name );	
	  } 
	  
	  
	  if ($message == null){		  
		  $total_recipient = 	$php5Session->getVar('total_recipient');
		  for ($ii=1; $ii<= $total_recipient; $ii++)
		  {
			   $ad =  $php5Session->getVar('recipient_address_book_id'.$ii);
			   if ( $ad == null)
			   {
				 $address_book = new Address_book();	
				 $address_book->user_id = $php5Session->getVar('user_id');	
				 $address_book->title =     $php5Session->getVar('shipping_title'.$ii);		
				 $address_book->surname = $php5Session->getVar('shipping_surname'.$ii );				   
				 $address_book->name = $php5Session->getVar('shipping_name'.$ii );
				 $address_book->email = $php5Session->getVar('shipping_email'.$ii  );	
				 $address_book->pre_telephone1   = $php5Session->getVar('shipping_pre_telephone1'.$ii  );	
				 $address_book->mid_telephone1   = $php5Session->getVar('shipping_mid_telephone1'.$ii  );					 			 	  		  
				 $address_book->telephone1   = $php5Session->getVar('shipping_telephone1'.$ii  );
				 $address_book->pre_telephone2   = $php5Session->getVar('shipping_pre_telephone2'.$ii  );	
				 $address_book->mid_telephone2   = $php5Session->getVar('shipping_mid_telephone2'.$ii  );				 		   
				 $address_book->telephone2 = $php5Session->getVar('shipping_telephone2'.$ii  );	
				 $address_book->pre_fax   = $php5Session->getVar('shipping_pre_fax'.$ii  );	
				 $address_book->mid_fax  = $php5Session->getVar('shipping_mid_fax'.$ii  );				 	  
				 $address_book->fax = $php5Session->getVar('shipping_fax'.$ii  );	
				 $address_book->company = $php5Session->getVar('shipping_company'.$ii );	
				 $address_book->block = $php5Session->getVar('shipping_block'.$ii  );	
				 $address_book->unit = $php5Session->getVar('shipping_unit'.$ii );			 		 
				 $address_book->building = $php5Session->getVar('shipping_building'.$ii  );	
				 $address_book->address1 = $php5Session->getVar('shipping_address1'.$ii );	
				 $address_book->address2 = $php5Session->getVar('shipping_address2'.$ii );					 
				 $address_book->city = $php5Session->getVar('shipping_city'.$ii  );	
				 $address_book->state = $php5Session->getVar('shipping_state'.$ii  );	
				 $address_book->postcode = $php5Session->getVar('shipping_postcode'.$ii );	
				 $address_book->country = $php5Session->getVar('shipping_country'.$ii );						   				     
				 $address_book->addDB(add_prefix('address_book'));
				 $address_book->updateID('address_book_id');
				 $php5Session->setVar('recipient_address_book_id' . $ii,  $address_book->address_book_id );  
			   }
		  }				
	  }
			   
}
$php5Session->setVar('existed',0);
$php5Session->setVar('billing_user', $user);
$smarty->assign('obj', $user );
?>