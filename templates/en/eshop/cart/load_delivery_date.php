<?php

include_once 'classes/delivery.class.php';

$delivery = new Delivery();
$rt =  $delivery->get_earliest_delivery(); 

$earliest_date_d1 = Date("l", strtotime($rt['date']));		  
$earliest_date_d2 = Date("d M Y", strtotime($rt['date'] ));
$earliest_time_d1 = Date("g a", strtotime( $rt['time'])  );		  

$smarty->assign('earliest_date_d1', $earliest_date_d1 );
$smarty->assign('earliest_date_d2', $earliest_date_d2 );  
$smarty->assign('earliest_time_d1', $rt['time'] );  


$delivery_from_date = 	$php5Session->getVar('delivery_from_date'.$d);
$delivery_from_date = ($delivery_from_date) ? $delivery_from_date : $rt['date'] ;

$delivery_to_date = 	$php5Session->getVar('delivery_to_date'.$d);
$delivery_to_date = ($delivery_to_date) ? $delivery_to_date : $rt['date'] ;


$query = get_delivery_sql( $delivery_from_date  );
$php5DB_en->setQuery( $query );		  
$objects = $php5DB_en->loadObjectList();
$delivery_options = "<table>"; 
$i = 0;
$f=1;
foreach ($objects as $object) {
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
	  $smarty->assign('delivery_surcharge', $object->surcharge); 
	
	
	$checked = ($object->delivery_time_id == $php5Session->getVar('delivery_time' . $d) )? 'checked' : '';
//				  if ($checked == 'checked')
	$delivery_surcharge = get_surcharge($object, $php5Session->getVar('shipping_postcode'.$d)) ;		
				
	 if (($delivery->is_valid_delivery_time($object,$delivery_from_date))) {
	 $disabled =   "" ;
	 $style= " font-weight:bold;";
	 } else {
		 $style= " color :#ccc; "; 
		 $disabled =   " disabled" ;
		 $checked = " "; 
	 }	
	 if (($disabled=="")&&$f){
			$checked = 'checked="checked"';
			$f=0;
		} else {
			$checked = " "; 
		}
	$delivery_options .= "<td>
						   <input style='border:0px;' type=radio id=delivery_time$d name=delivery_time$d $disabled value=".$object->delivery_time_id."  $checked  validate='required:true'  > </td><td style='$style'>" . 
						   $object->caption  	."<td/>";							
	 $i++;
					   						  
}
			  
$delivery_options .= "</table>"; 	 
		 
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