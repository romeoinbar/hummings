<?php
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/delivery.class.php";

$popup=1;
$clean=1;
$available = 0; 
$d = $task;			
$listID="";  

//============================================================================
$delivery = new Delivery();
$rt = $delivery->get_earliest_delivery();
	
$earliest_date = $rt['date'];	

$max = $php5Session->getVar('counter'); 
for ($i=1; $i<$max; $i++) {
	 $listID .= $php5Session->getVar('pid'.$i).',';   
	  for ($a=1; $a<= $php5Session->getVar('total_addon'.$i); $a++){
		  $listID .= $php5Session->getVar('addon'.$i . "_" . $a).",";
	  }
}

$php5DB_en->setQuery("SELECT available_date FROM #__product WHERE product_id IN (".$listID."0) ORDER BY available_date DESC  LIMIT 0,1");
$max_available_date = $php5DB_en->loadResult();

$php5DB_en->setQuery("SELECT lead_time FROM #__product WHERE product_id IN (".$listID."0) ORDER BY lead_time DESC  LIMIT 0,1");
$max_leadtime = $php5DB_en->loadResult();

date_default_timezone_set('Asia/Singapore');
$curr_hour=date('Y-m-d H:i', strtotime("+ ".$max_leadtime." hours"));
			  
if (($id >= $earliest_date) AND ( $delivery->is_off_day($id)) AND (date('Y-m-d', strtotime($id)) >= date('Y-m-d',strtotime($max_available_date)))){      
	$query = get_delivery_sql($id);
	$d = $task;				  
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
			$smarty->assign('delivery_surcharge', price_tag($object->surcharge)  ); 					  
					  
		 $checked = ($object->delivery_time_id == $php5Session->getVar('delivery_time' . $d) )? 'checked' : '';
	//	if ($checked == 'checked')
		 $delivery_surcharge =  get_surcharge($object, $php5Session->getVar('shipping_postcode'.$d)) ;					  
					   
		 if (($delivery->is_valid_delivery_time($object,$id))) {
			
			 if ($curr_hour < date("Y-m-d H:i", strtotime($id.' '.$object->from_time))){
			   $disabled =   "" ;
			   
			   $style= " font-weight:bold;";
			   $available++;	
			 } else {
				  $style= " color :#ccc; "; 
				   $disabled =   " disabled" ;
				   $checked = " "; 
			 }
		 }	else {
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
					   
		 $delivery_options .= "<td >  
							 <input type=radio style='border:0px;' id=delivery_time$d name=delivery_time$d value=".$object->delivery_time_id."  $checked  $disabled validate='required:true' class=required  > </td>
							 <td style='$style'>" .  $object->caption  	."<td/>";
											  
		 $i++;												  
	}				  
	$delivery_options .= "</table>"; 	 	
	if ( $available != 0)
		echo  $delivery_options; 
}
	//============================================================================



if ( $available == 0)
echo "<div style='width:250px; height:40px; overflow:hidden;'>Please choose another 'From Date' <input onChange=this.value='' type=text style='border:0px; height:1px; width:1px;' name=delivery_time$d  class=required ></div>";
return;

