<?php


	   $cart = new Cart();
	   $recipients = $cart->get_recipient();	
       $recipient = explode(",", $recipients);
			$gonext = '';	 
			
	   $d = 0;
	   $main .= "<form action='$url_shipping2' method=post id='vForm' class='cmxform' >";
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
         $php5Session->setVar('shipping_city'.$d  , $_POST['city'.$d] );	
         $php5Session->setVar('shipping_state'.$d  , $_POST['state'.$d] );	
         $php5Session->setVar('shipping_postcode'.$d  , $_POST['postcode'.$d] );	
         $php5Session->setVar('shipping_country'.$d  , $_POST['country'.$d] );			 

         $php5Session->setVar('delivery_from_date'.$d  , $_POST['delivery_from_date'.$d] );
         $php5Session->setVar('delivery_to_date'.$d  , $_POST['delivery_to_date'.$d]);
         $php5Session->setVar('delivery_time'.$d  , $_POST['delivery_time'.$d]);
         $php5Session->setVar('call_before_delivery'.$d  , $_POST['call_before_delivery'.$d]);
         $php5Session->setVar('avoid_lunch'.$d  , $_POST['avoid_lunch'.$d]);



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
         	     $address_book->telephone1   = $php5Session->getVar('shipping_telephone1'.$d   );		   
         	     $address_book->telephone2 = $php5Session->getVar('shipping_telephone2'.$d   );		  
         	     $address_book->fax = $php5Session->getVar('shipping_fax'.$d   );	
         	     $address_book->company = $php5Session->getVar('shipping_company'.$d  );	
         	     $address_book->block = $php5Session->getVar('shipping_block'.$d   );	
         	     $address_book->unit = $php5Session->getVar('shipping_unit'.$d  );			 		 
         	     $address_book->building = $php5Session->getVar('shipping_building'.$d   );	
         	     $address_book->address1 = $php5Session->getVar('shipping_address1'.$d  );	
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






?>