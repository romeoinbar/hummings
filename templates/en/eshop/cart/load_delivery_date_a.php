<?php
include_once 'classes/tables.class.php';
include_once 'classes/delivery.class.php';

  
		      $query = get_delivery_sql($_SESSION['delivery_from_date'.$d);
              $php5DB_en->setQuery( $query );		  
              $objects = $php5DB_en->loadObjectList();
			  $delivery_options = "<table>"; 
			  $i = 0;
			  foreach ($objects as $object)
			  {
                  if ( ($i %2) == 0 )
				  $delivery_options .= "</tr><tr>";		
				  		  
                  $smarty->assign('delivery_time_from', dispplay_time($object->from_time)  );  
                  $smarty->assign('delivery_time_to', dispplay_time($object->to_time)  );  		 
				  

	              $coupon = new Coupon();
	              $coupon->loadData( add_prefix('coupon'), 'coupon_code' , $php5Session->getVar('coupon_code')  );
//	echo  $applied_coupon_code;
//	$coupon->showVariables();
	              if ($coupon->free_delivery)
                    $smarty->assign('delivery_surcharge', price_tag(0)  ); 
				  else	   
                    $smarty->assign('delivery_surcharge', price_tag($object->surcharge)  ); 
  				  
				  
				  $checked = ($object->delivery_time_id == $php5Session->getVar('delivery_time' . $d) )? 'checked' : '';
//				  if ($checked == 'checked')
				  $delivery_surcharge =  		 get_surcharge($object, $php5Session->getVar('shipping_postcode'.$d)) ;					  
				   
				  $delivery_options .= "<td>
				                         <input type=radio id=delivery_time$d name=delivery_time$d value=".$object->delivery_time_id."  $checked  validate='required:true'  > </td><td>" . 
				                         $object->caption  	."<td/>";
										  
				   $i++;
					   						  
			  }
			  
			  $delivery_options .= "</table>"; 	 
		 $delivery_from_date = 	$php5Session->getVar('delivery_from_date'.$d);
		 $delivery_from_date = ($delivery_from_date) ? $delivery_from_date : date('Y-m-d') ;
		 $delivery_to_date = 	$php5Session->getVar('delivery_to_date'.$d);
		 $delivery_to_date = ($delivery_to_date) ? $delivery_to_date : date('Y-m-d') ;

		 
		 $call_before_delivery = $php5Session->getVar('call_before_delivery'.$d);
		 $call_before_delivery = ($call_before_delivery ) ? 'checked':'';
		 $avoid_lunch = $php5Session->getVar('avoid_lunch'.$d);
		 $avoid_lunch = ($avoid_lunch ) ? 'checked':'';		 


		 $smarty->assign('delivery_from_date', convert_date1($delivery_from_date)  );  
		 $smarty->assign('delivery_to_date', convert_date1($delivery_to_date)  );  			  
		 $smarty->assign('delivery_options', $delivery_options);	  
		 $smarty->assign('call_before_delivery', $call_before_delivery);
		 $smarty->assign('avoid_lunch', $avoid_lunch);		     
?>