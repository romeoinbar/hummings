<?php
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/delivery.class.php";
$popup=1;
$clean=1;
$available = 0; 
$d = $task;


			  
$max = $php5Session->getVar('counter'); 
for ($i=1; $i<$max; $i++) {
	 $listID = $php5Session->getVar('pid'.$i).',';          
}

$php5DB_en->setQuery("SELECT available_date FROM #__product WHERE product_id IN (".$listID."0) ORDER BY available_date DESC  LIMIT 0,1");
$max_available_date = $php5DB_en->loadResult();
$curr_date = date("Y-m-d");
	
if (($max_available_date=='0000-00-00')||($curr_date > date("Y-m-d", strtotime($max_available_date)))){
	//============================================================================
	$delivery = new Delivery();
	$rt = $delivery->get_earliest_delivery();
	
	$earliest_date = $rt['date'];
	
				  
	if (($id >=    $earliest_date) AND ( $delivery->is_off_day($id)))
	{      
	  $query = get_delivery_sql($id);
	  $d = $task;
				  
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
					   
					   if (($delivery->is_valid_delivery_time($object,$id)))
					   {
					   $disabled =   "" ;
					   $style= " font-weight:bold;";
						$available++;
					   }
					   else
					   {
										   $style= " color :#ccc; "; 
										   $disabled =   " disabled" ;
										   $checked = " "; 
					   }
					   
					  $delivery_options .= "<td >  
											 <input type=radio style='border:0px;' id=delivery_time$d name=delivery_time$d value=".$object->delivery_time_id."  $checked  $disabled validate='required:true' class=required  > </td>
											 <td style='$style'>" .  $object->caption  	."<td/>";
											  
					   $i++;
												  
				  }
				  
				  $delivery_options .= "</table>"; 	 
	
	echo  $delivery_options; 
	}
	//============================================================================
}


if ( $available == 0)
echo "<div style='width:250px; height:40px; overflow:hidden;'>Please choose another 'From Date' <input onChange=this.value='' type=text style='border:0px; height:1px; width:1px;' name=delivery_time$d  class=required ></div>";
return;

