<?php 
include_once "$php5RootPath/languages/en/eshop/header_item/earliest_delivery.php"; 
 include_once "$php5RootPath/classes/delivery.class.php" ;

          $earliest_delivery = "";


          $earliest_delivery .=  $lang_earliest_delivery; 

	      $delivery = new Delivery();
		  $dt = $delivery->get_earliest_delivery();
          
          $earliest_delivery .=  date('d M Y', strtotime($dt['date']) ) . "  Between " . $dt['time']; 
$smarty->assign('earliest_delivery', $earliest_delivery );		  
		  ?>