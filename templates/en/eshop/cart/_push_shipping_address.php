<?php

include 'includes/send_email.php';
	   $cart = new Cart();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
	   $gonext = '';	 
  			
	   $d = 0;

	   if ($recipients!= null)
	   {
	   foreach ($recipient as $r )
	   { 
	   	      $d++;
	    if ($d == $id)
		{	
         $php5Session->setVar('shipping_title'.$d  , $_POST['title'.$d] );	
         $php5Session->setVar('shipping_surname'.$d  , $_POST['surname'.$d] );		 	  
         $php5Session->setVar('shipping_name'.$d  , $_POST['name'.$d] );
         $php5Session->setVar('shipping_email'.$d  , $_POST['email'.$d] );		  
         $php5Session->setVar('shipping_pre_telephone1'.$d  , $_POST['pre_telephone1'.$d] );
         $php5Session->setVar('shipping_mid_telephone1'.$d  , $_POST['mid_telephone1'.$d] );		  
         $php5Session->setVar('shipping_telephone1'.$d  , $_POST['telephone1'.$d] );		 
         $php5Session->setVar('shipping_pre_telephone2'.$d  , $_POST['pre_telephone2'.$d] );
         $php5Session->setVar('shipping_mid_telephone2'.$d  , $_POST['mid_telephone2'.$d] );		  
         $php5Session->setVar('shipping_telephone2'.$d  , $_POST['telephone2'.$d] );	
         $php5Session->setVar('shipping_pre_fax'.$d  , $_POST['pre_fax'.$d] );
         $php5Session->setVar('shipping_mid_fax'.$d  , $_POST['mid_fax'.$d] );		  
         $php5Session->setVar('shipping_fax'.$d  , $_POST['fax'.$d] );	
         $php5Session->setVar('shipping_company'.$d  , $_POST['company'.$d] );	
         $php5Session->setVar('shipping_block'.$d  , $_POST['block'.$d] );	
         $php5Session->setVar('shipping_unit'.$d  , $_POST['unit'.$d] );			 		 
         $php5Session->setVar('shipping_building'.$d  , $_POST['building'.$d] );	
         $php5Session->setVar('shipping_address1'.$d  , $_POST['address1'.$d] );
         $php5Session->setVar('shipping_address2'.$d  , $_POST['address2'.$d] );			 	
         $php5Session->setVar('shipping_city'.$d  , $_POST['city'.$d] );	
         $php5Session->setVar('shipping_state'.$d  , $_POST['state'.$d] );	
         $php5Session->setVar('shipping_postcode'.$d  , $_POST['postcode'.$d] );	
         $php5Session->setVar('shipping_country'.$d  , $_POST['country'.$d] );			 

         $php5Session->setVar('delivery_from_date'.$d  , convert_date2($_POST['delivery_from_date'.$d]) );
         $php5Session->setVar('delivery_to_date'.$d  , convert_date2($_POST['delivery_to_date'.$d]));
         $php5Session->setVar('delivery_time'.$d  , $_POST['delivery_time'.$d]);


         $php5Session->setVar('message_sender'.$d  , stripslashes($_POST['message_sender'.$d]) );
         $php5Session->setVar('message_sender2'.$d  , stripslashes($_POST['message_sender2'.$d]) );		 
         $php5Session->setVar('message_sender3'.$d  , stripslashes($_POST['message_sender3'.$d]) );
		 		 
         $php5Session->setVar('message_receiver'.$d  , stripslashes($_POST['message_receiver'.$d]));
         $php5Session->setVar('message_receiver2'.$d  , stripslashes($_POST['message_receiver2'.$d]));
         $php5Session->setVar('message_receiver3'.$d  , stripslashes($_POST['message_receiver3'.$d]));
		 		 		 
         $php5Session->setVar('message_content'.$d  , stripslashes($_POST['message_content'.$d]));
         $php5Session->setVar('message_content2'.$d  , stripslashes($_POST['message_content2'.$d]) );
         $php5Session->setVar('message_content3'.$d  , stripslashes($_POST['message_content3'.$d]));
         $php5Session->setVar('message_content4'.$d  , stripslashes($_POST['message_content4'.$d]));
         $php5Session->setVar('message_content5'.$d  , stripslashes($_POST['message_content5'.$d]));
         $php5Session->setVar('message_content6'.$d  , stripslashes($_POST['message_content6'.$d]));		 		 		 		 		
		 

         if (isset( $_POST['call_before_delivery'.$d]) ) $php5Session->setVar('call_before_delivery'.$d  , $_POST['call_before_delivery'.$d]);
         if (isset( $_POST['avoid_lunch'.$d]) )  $php5Session->setVar('avoid_lunch'.$d  , $_POST['avoid_lunch'.$d]);
		 
		 			 
		 $user_id = $php5Session->getVar('user_id' );
		 if (!$user_id)
		 {
			  if ($r == 0)
			  {
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


                if ($message == null)
				{
	            global $php5Session;
	            $total_recipient = 	$php5Session->getVar('total_recipient');
			    $recipients = $cart->get_recipient();	
					   
	            for ($ii=1; $ii<= $total_recipient; $ii++)
	            {
                     $ad =  $php5Session->getVar('recipient_address_book_id'.$ii);
                     if ( $ad == null)
					 if ( check_inside($recipients , $ii  )  ) 
					 {
					   $iii = get_i_from_recipient($ii);
					   $address_book = new Address_book();	
		               $address_book->user_id = $php5Session->getVar('user_id');	
     	               $address_book->title =     $php5Session->getVar('shipping_title'.$iii);		
         	           $address_book->surname = $php5Session->getVar('shipping_surname'.$iii );				   
         	           $address_book->name = $php5Session->getVar('shipping_name'.$iii );
         	           $address_book->email = $php5Session->getVar('shipping_email'.$iii  );	
         	           $address_book->pre_telephone1   = $php5Session->getVar('shipping_pre_telephone1'.$iii  );	
         	           $address_book->mid_telephone1   = $php5Session->getVar('shipping_mid_telephone1'.$iii  );					 			 	  		  
         	           $address_book->telephone1   = $php5Session->getVar('shipping_telephone1'.$iii  );
         	           $address_book->pre_telephone2   = $php5Session->getVar('shipping_pre_telephone2'.$iii  );	
         	           $address_book->mid_telephone2   = $php5Session->getVar('shipping_mid_telephone2'.$iii  );				 		   
         	           $address_book->telephone2 = $php5Session->getVar('shipping_telephone2'.$iii  );	
         	           $address_book->pre_fax   = $php5Session->getVar('shipping_pre_fax'.$iii  );	
         	           $address_book->mid_fax  = $php5Session->getVar('shipping_mid_fax'.$iii  );				 	  
         	           $address_book->fax = $php5Session->getVar('shipping_fax'.$iii  );	
         	           $address_book->company = $php5Session->getVar('shipping_company'.$iii );	
         	           $address_book->block = $php5Session->getVar('shipping_block'.$iii  );	
         	           $address_book->unit = $php5Session->getVar('shipping_unit'.$iii );			 		 
         	           $address_book->building = $php5Session->getVar('shipping_building'.$iii  );	
         	           $address_book->address1 = $php5Session->getVar('shipping_address1'.$iii );	
        	           $address_book->address2 = $php5Session->getVar('shipping_address2'.$iii );					 
         	           $address_book->city = $php5Session->getVar('shipping_city'.$iii  );	
         	           $address_book->state = $php5Session->getVar('shipping_state'.$iii  );	
         	           $address_book->postcode = $php5Session->getVar('shipping_postcode'.$iii );	
         	           $address_book->country = $php5Session->getVar('shipping_country'.$iii );						   				     
		               $address_book->addDB(add_prefix('address_book'));
			           $address_book->updateID('address_book_id');
			           $php5Session->setVar('recipient_address_book_id' . $ii,  $address_book->address_book_id );  
					 }
	            }
				}
					
				
				  
			  }
		 }
		 else
		 { 
            if ($r == 0)
			{
              $address_book = new User();	
			  $address_book->loadData(add_prefix('user'), 'user_id' , $php5Session->getVar('user_id'));	 
			}
			else 
			{
              $address_book = new Address_book();	
				 
              if ($ad = $php5Session->getVar('recipient_address_book_id' . $r))
		      {	  
                $address_book->loadData(add_prefix('address_book'),'address_book_id', $ad );	
		      }
		      else
		      { 
		        $address_book->user_id = $php5Session->getVar('user_id');
		        $address_book->addDB(add_prefix('address_book'));
			    $address_book->updateID('address_book_id');
			    $php5Session->setVar('recipient_address_book_id' . $r,  $address_book->address_book_id );  
		      }
			}
			
     	         $address_book->title =     $php5Session->getVar('shipping_title'.$d );		
				 
         	     $address_book->surname = $php5Session->getVar('shipping_surname'.$d  );				   
         	     $address_book->name = $php5Session->getVar('shipping_name'.$d  );
         	     $address_book->email = $php5Session->getVar('shipping_email'.$d   );	
         	     $address_book->pre_telephone1   = $php5Session->getVar('shipping_pre_telephone1'.$d   );	
         	     $address_book->mid_telephone1   = $php5Session->getVar('shipping_mid_telephone1'.$d   );					 			 	  		  
         	     $address_book->telephone1   = $php5Session->getVar('shipping_telephone1'.$d   );
         	     $address_book->pre_telephone2   = $php5Session->getVar('shipping_pre_telephone2'.$d   );	
         	     $address_book->mid_telephone2   = $php5Session->getVar('shipping_mid_telephone2'.$d   );				 		   
         	     $address_book->telephone2 = $php5Session->getVar('shipping_telephone2'.$d   );	
         	     $address_book->pre_fax   = $php5Session->getVar('shipping_pre_fax'.$d   );	
         	     $address_book->mid_fax  = $php5Session->getVar('shipping_mid_fax'.$d   );				 	  
         	     $address_book->fax = $php5Session->getVar('shipping_fax'.$d   );	
         	     $address_book->company = $php5Session->getVar('shipping_company'.$d  );	
         	     $address_book->block = $php5Session->getVar('shipping_block'.$d   );	
         	     $address_book->unit = $php5Session->getVar('shipping_unit'.$d  );			 		 
         	     $address_book->building = $php5Session->getVar('shipping_building'.$d   );	
         	     $address_book->address1 = $php5Session->getVar('shipping_address1'.$d  );	
        	     $address_book->address2 = $php5Session->getVar('shipping_address2'.$d  );					 
         	     $address_book->city = $php5Session->getVar('shipping_city'.$d   );	
         	     $address_book->state = $php5Session->getVar('shipping_state'.$d   );	
         	     $address_book->postcode = $php5Session->getVar('shipping_postcode'.$d  );	
         	     $address_book->country = $php5Session->getVar('shipping_country'.$d  );		 

            if ($r == 0)
			{
                 $address_book->updateDB(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );
			 
			}
			else 
             $address_book->updateDB(add_prefix('address_book'), 'address_book_id', $address_book->address_book_id);
			
			    
		 }
	   }
	   else if ($d > $id)
	   {
	        if ($gonext == '') 
			$gonext =  sefBuild($php5WebPath, "index.php?o=eshop&m=checkout&task=shipping_address&id=$d" , 1);		    
			

	   }
	   
	   }
	   
	   }

			if ($message)
			{
			 $gonext =  sefBuild($php5WebPath, "index.php?o=eshop&m=checkout&task=shipping_address&id=$sd" , 1);		    
			 $php5Session->setVar('message', $message  );
			}


if ( isset($_REQUEST['remember_address']) )
{

         $php5Session->setVar('recorded_address'  , $id );		
         $php5Session->setVar('record_shipping_company'  , $_POST['company'.$id] );	
         $php5Session->setVar('record_shipping_block'  , $_POST['block'.$id] );	
         $php5Session->setVar('record_shipping_unit'  , $_POST['unit'.$id] );			 		 
         $php5Session->setVar('record_shipping_building'  , $_POST['building'.$id] );	
         $php5Session->setVar('record_shipping_address1'  , $_POST['address1'.$id] );	
         $php5Session->setVar('record_shipping_address2'  , $_POST['address2'.$id] );		 
         $php5Session->setVar('record_shipping_city'  , $_POST['city'.$id] );	
         $php5Session->setVar('record_shipping_state'  , $_POST['state'.$id] );	
         $php5Session->setVar('record_shipping_postcode'  , $_POST['postcode'.$id] );	
         $php5Session->setVar('record_shipping_country'  , $_POST['country'.$id] );		
		 
//		 echo  $php5Session->getVar('record_shipping_company'); 
}

?>