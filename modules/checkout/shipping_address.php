<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include_once 'classes/cart.class.php';
include_once 'includes/send_email.php';
//include 'templates/en/eshop/cart/push_shipping_address.php';	
$d =1;
$r = 0;
//////////////////////////////////////////////////////////
$php5Session->setVar('delivery_from_date'.$d  , convert_date2($_POST['delivery_from_date'.$d]) );
$php5Session->setVar('delivery_to_date'.$d  , convert_date2($_POST['delivery_to_date'.$d]));
$php5Session->setVar('delivery_time'.$d  , $_POST['delivery_time'.$d]);

$php5Session->setVar('message_sender'.$d  , stripslashes($_POST['message_sender'.$d]) );
	   
$php5Session->setVar('message_receiver'.$d  , stripslashes($_POST['message_receiver'.$d]));
			   
$php5Session->setVar('message_content'.$d  , stripslashes($_POST['message_content'.$d]));

if (isset( $_POST['call_before_delivery'.$d]) ) $php5Session->setVar('call_before_delivery'.$d  , $_POST['call_before_delivery'.$d]);
if (isset( $_POST['avoid_lunch'.$d]) )  $php5Session->setVar('avoid_lunch'.$d  , $_POST['avoid_lunch'.$d]);
//////////////////////////////////////////////////////////


 $user_id = $php5Session->getVar('user_id' );
		 if (!$user_id) {
			  if ($r == 0) {
			    $user = new User();

			    $user->title =   $php5Session->getVar('shipping_title'.$d  );	
			    $user->surname =    $php5Session->getVar('shipping_surname'.$d  );		 	  
			    $user->name =   $php5Session->getVar('shipping_name'.$d   );
			    $user->email=   $php5Session->getVar('shipping_email'.$d  );		  
			    $user->pre_telephone1 =   $php5Session->getVar('shipping_pre_telephone1'.$d  );
			    $user->mid_telephone1 =   $php5Session->getVar('shipping_mid_telephone1'.$d  );		  
			    $user->telephone1 =   $php5Session->getVar('shipping_telephone1'.$d   );		 
			    $user->pre_telephone2 =   $php5Session->getVar('shipping_pre_telephone2'.$d   );
			    $user->mid_telephone2 =   $php5Session->getVar('shipping_mid_telephone2'.$d   );		  
 			    $user->telephone2 =  $php5Session->getVar('shipping_telephone2'.$d  );	
 			    $user->pre_fax =  $php5Session->getVar('shipping_pre_fax'.$d   );
			    $user->mid_fax =   $php5Session->getVar('shipping_mid_fax'.$d  );		  
			    $user->fax =   $php5Session->getVar('shipping_fax'.$d  );	
			    $user->company =   $php5Session->getVar('shipping_company'.$d  );	
			    $user->block =   $php5Session->getVar('shipping_block'.$d   );	
 			    $user->unit =  $php5Session->getVar('shipping_unit'.$d   );			 		 
			    $user->building =   $php5Session->getVar('shipping_building'.$d   );	
			    $user->address1 =   $php5Session->getVar('shipping_address1'.$d   );
			    $user->address2 =   $php5Session->getVar('shipping_address2'.$d  );			 	
			    $user->city =   $php5Session->getVar('shipping_city'.$d  );	
			    $user->state =   $php5Session->getVar('shipping_state'.$d   );	
			    $user->postcode =   $php5Session->getVar('shipping_postcode'.$d   );	
 			    $user->country =  $php5Session->getVar('shipping_country'.$d   );
	
		
				$user->password = "abc123";				
			    $user->addDB(add_prefix('user'));	
			    $message =  $user->mysql_error_message();
				$duplicate = strstr($message ,"key 'email'");
                if($duplicate)
				{
                     $message = "Your Email is found in the record. Plase <a href='". sefBuild($php5WebPath, "index.php?o=eshop&m=register" , 1) ."/'>log in</a> to proceed.
					 <br/> *<i>You can use the password retrieve function by clicking on 'Forgot your password?' if you are unable to remember your password.</i>";
                 }

				
				if ($message == 'success')  $message = null;
				$php5Session->setVar('message', $message );

                if ($message ==  '')
				{
				
                  $smarty->assign('email_to', $user->email);	
                  $smarty->assign('password', $user->password );	
                  $tpl =  $php5RootPath.'/templates/en/eshop/member_welcome_email.tpl';
                  $content =  $smarty->fetch($tpl);		
					
                  email_register_user($user->email, $user->password, $content);
                  $user->gender = " ";	  

                  $user->password = md5("abc123");	
				
				  $user->updateID('user_id');

                  $user->sold_to_party_no =  '0007' .  sprintf("%06s",$user->user_id);
                  $user->contact_person_code =  '7' . sprintf("%06s",$user->user_id) . "001";
                  $user->customer_group =  "02";
				  $user->updateDB(add_prefix('user'), 'user_id', $user->user_id);
																
				  $php5Session->setVar('user_id', $user->user_id );
                  $php5Session->setVar('user_name', $user->name );	
				}
				

	
																
				$php5Session->setVar('user_id', $user->user_id );
                $php5Session->setVar('user_name', $user->name );
			  }
		 }
/////////////////////////////////////////////////////////////////////////
php5Redirect(sefBuild($php5WebPath, 'index.php?o=checkout&m=billing_address' , 1));
?>