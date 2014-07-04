<?php
/***************************************************************************
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "order")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
include_once "$php5RootAdminPath/modules/header.php"; 
include_once "$php5RootPath/classes/tables.class.php"; 
include_once "$php5RootPath/classes/images.class.php"; 
include_once "$php5RootPath/includes/select_input.php"; 
include_once "$php5RootPath/classes/sapfields.class.php"; 
include_once "$php5RootPath/classes/cart.class.php"; 
include_once "$php5RootPath/classes/page.class.php"; 
$page_session_name = "orders";
  
$main_content = "";
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
//get               
$task 		= php5GetParam($_REQUEST, 'task', '');
$currPage = php5GetParam($_REQUEST, 'p', 1);
$list_url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite', 0) ;
$smarty->assign('url_list' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite', 0)  );			
		
$smarty->assign('url_update_order' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=update_order&t=insite', 0)  );	

switch($task)
{
	case 'change_status':
	
	$order= new Order();
	$order->loadData(add_prefix('order'), 'order_id', $id);
	$order->bindRequest();
	$order->updateDBRQ(add_prefix('order'), 'order_id', $id);
	$smarty->assign('message' ,  $order->mysql_error_message()   );			
	$smarty->assign('stored_page' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite&id=' . $id , 0)  );
	$tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'after_query.tpl');
    $main_content.= $smarty->fetch($tpl); 		
					
	break;

	case 'delete':
	

	$order= new Order();
	$order->deleteDB(add_prefix('order'), 'order_id', $id);
	$order= new Order_delivery();
	$order->deleteDB(add_prefix('order_delivery'), 'order_id', $id);
	$order= new Order_item();
	$order->deleteDB(add_prefix('order_item'), 'order_id', $id);
	$order= new Order_addon();
	$order->deleteDB(add_prefix('order_addon'), 'order_id', $id);	
	$order= new Order_payment();
	$order->deleteDB(add_prefix('order_payment'), 'order_id', $id);		

//	$order->updateDBRQ(add_prefix('order'), 'order_id', $id);
	$smarty->assign('message' ,  $order->mysql_error_message()   );			
	$smarty->assign('stored_page' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite&id=' . $id , 0)  );
	$tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'after_query.tpl');
    $main_content.= $smarty->fetch($tpl); 		
					
	break;
	
	case 'update_order':
	
	$id = $_POST['order_id'];
	$order= new Order();
	$order->loadData(add_prefix('order'), 'order_id', $id);
	$order->bindRequest();
	$order->updateDB(add_prefix('order'), 'order_id', $id);
	$order->showvariables();		
	$od_id = $order->delivery_id;

	$order_delivery= new Order_delivery();
	$order_delivery->loadData(add_prefix('order_delivery'), 'order_delivery_id', $od_id);
	$order_delivery->bindRequest();	
	$order_delivery->showvariables();
	$order_delivery->updateDB(add_prefix('order_delivery'), 'order_delivery_id', $od_id);	
//	$order->updateDBRQ(add_prefix('order'), 'order_id', $id);
	$smarty->assign('message' ,  $order->mysql_error_message()   );			
	$smarty->assign('stored_page' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite&id=' . $id , 0)  );
	$tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'after_query.tpl');
    $main_content.= $smarty->fetch($tpl); 		
					
	break;
	
	case 'detail':
    $smarty->assign('url_print' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=detail_print&t=insite&id='.$id, 0)  );			
	$order= new Order();
	$order->loadData(add_prefix('order'), 'order_id', $id);
	$user= new User();
	$user->loadData(add_prefix('user'), 'user_id', $order->user_id);	
	$smarty->assign('user' ,  $user);		
	$smarty->assign('order' ,  $order);	
	$smarty->assign('order_id' ,  sprintf("%06s",$order->order_id) );			
	$smarty->assign('order' ,  $order);			
	$smarty->assign('country' ,  gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country',  $order->country) );			

    $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'detail_bill.tpl');
    $main_content.= $smarty->fetch($tpl); 	
		
      $query = "SELECT * FROM #__order_delivery WHERE order_id = '$id' ";
      $php5DB_en->setQuery( $query );  
      $os = $php5DB_en->loadAssocList();
	  foreach ( $os as $o)
	  {
	    $order_delivery= new Order_delivery();
	    $order_delivery->loadData(add_prefix('order_delivery'), 'order_delivery_id', $o['order_delivery_id']);
	    $smarty->assign('order_delivery' ,  $order_delivery);			
	    $smarty->assign('s_country' ,  gen_select(add_prefix('country'), 'country', 'shipto_country', 'country_code', 'country',  $order_delivery->shipto_country) );				  		  		  		
	
          $query = "SELECT * FROM #__order_item WHERE delivery_id = '".$order_delivery->order_delivery_id."' ";
          $php5DB_en->setQuery( $query );  
          $itms = $php5DB_en->loadAssocList();
	  
	      $items = ""; 
	      $subtotal = 0;
		  $surcharge = 0;
	      foreach ( $itms as $itm)
	      {
		      $product = new Product();
		      $product->loadData(add_prefix('product'), 'product_id', $itm['product_id']);
			  $order_item = new Order_item();
		      $order_item->loadData(add_prefix('order_item'), 'order_item_id', $itm['order_item_id']);			  
			  
		      $qty = $itm['qty'];
	    	  $unit_price = $order_item->get_discounted_price();	
	    	  $surcharge += $order_item->get_surcharge();				  	 
			  			   
		      $total = $unit_price * $qty;	
		      $subtotal +=  $total; 	
			  	  
		      $items .= "
		       <tr>
	     	    <td>".$product->name."</td>
		        <td>".$itm['sku']."</td>
		        <td>$qty</td>	
		        <td align=right style='text-align:right;'>". price_tag($unit_price)."</td>	
		        <td align=right  style='text-align:right;'>". price_tag($total) ."</td>												
		      </tr>";
			  
			  
			  
			  
			  
			  
              $query = "SELECT * FROM #__order_addon WHERE order_item_id = '". $itm['order_item_id'] ."' ";
              $php5DB_en->setQuery( $query );  
              $oas = $php5DB_en->loadAssocList();

	          foreach ( $oas as $oa )
	          {
			   $product->loadData(add_prefix('product'), 'product_id', $oa['addon_product_id']);	
		       $qty = $itm['qty'];
	    	   $unit_price = $product->price;	
		       $total = $unit_price * $qty;	
//		       $subtotal +=  $total; 		
			   
			     
               $items .= "
		        <tr>
	     	    <td> Addon : ".$product->name."</td>
		        <td>".$oa['addon_sku']."</td>
		        <td>$qty</td>	
		        <td align=right style='text-align:right;'>". price_tag($unit_price)."</td>	
		        <td align=right  style='text-align:right;'>-</td>												
		      </tr>"; 
				 
				  
		      }
			  
			  
			  
			  
			  
		  
	      }
	    $smarty->assign('items' ,  $items  );	  	
	    $smarty->assign('subtotal' ,  price_tag($subtotal)  );
	    $smarty->assign('gst' ,  price_tag($product->gst($subtotal + $surcharge))  );	

	    $g_total = $subtotal + $product->gst($subtotal+$surcharge) + $surcharge;

	    $smarty->assign('surcharge' ,  price_tag($surcharge)  );	
	    $smarty->assign('g_total' ,  price_tag($g_total)  );	

	    $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'detail_delivery.tpl');
        $main_content.= $smarty->fetch($tpl); 
		    $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'detail_item.tpl');
        $main_content.= $smarty->fetch($tpl); 	
			

	

	  }
	
		
	
	$smarty->assign('stored_page' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite&id=' . $id , 0)  );
	
					
	break;


	case 'detail_print':
	$popup = 1;

	$order= new Order();
	$order->loadData(add_prefix('order'), 'order_id', $id);
	$smarty->assign('order' ,  $order);	
	$smarty->assign('order_id' ,  sprintf("%06s",$order->order_id) );			
	$smarty->assign('order' ,  $order);			
	$smarty->assign('country' ,  gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country',  $order->country) );			
					
	$order_delivery= new Order_delivery();
	$order_delivery->loadData(add_prefix('order_delivery'), 'order_delivery_id', $order->delivery_id);
	$smarty->assign('order_delivery' ,  $order_delivery);			
	$smarty->assign('s_country' ,  gen_select(add_prefix('country'), 'country', 'shipto_country', 'country_code', 'country',  $order_delivery->shipto_country) );	
		
      $query = "SELECT * FROM #__order_item WHERE order_id = '$id' ";
      $php5DB_en->setQuery( $query );  
      $itms = $php5DB_en->loadAssocList();
	  
	  $items = ""; 
	  $subtotal = 0;
	  foreach ( $itms as $itm)
	  {
		  $product = new Product();
		  $product->loadData(add_prefix('product'), 'product_id', $itm['product_id']);
		  $qty = $itm['qty'];
		  $unit_price = $itm['unit_price'];		  
		  $total = number_format( ($unit_price * $qty) ,2);	
		  $subtotal +=  $total; 		  
		  $items .= "
		  <tr>
		    <td>".$product->name."</td>
		    <td>".$itm['sku']."</td>
		    <td>$qty</td>	
		    <td align=right style='text-align:right;'>". price_tag($unit_price)."</td>	
		    <td align=right  style='text-align:right;'>". price_tag($total) ."</td>												
		  </tr>";
		  
	  }
	$smarty->assign('items' ,  $items  );	  	
	$smarty->assign('subtotal' ,  price_tag($subtotal)  );
	$smarty->assign('gst' ,  price_tag($product->gst($subtotal))  );		
	
	$surcharge = 0;
	if ($order_delivery->payment_status==0)
	$surcharge = $order_delivery->surcharge;
	$g_total = $subtotal + $product->gst($subtotal) + $surcharge;

	$smarty->assign('surcharge' ,  price_tag($surcharge)  );	
	$smarty->assign('g_total' ,  price_tag($g_total)  );			
	
	$smarty->assign('stored_page' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=&t=insite&id=' . $id , 0)  );
	$tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'detail_print.tpl');
    $main_content.= $smarty->fetch($tpl); 		
	echo $main_content	;			
	break;
	
			
	default:  

	  $order_status  = (	  $php5Session->getVar('order_status') ) ? 	  $php5Session->getVar('order_status') : 0;
	  $php5Session->setVar('order_status', $order_status  );
	  
	  if (isset($_POST['order_status']))
	  {
	    $php5Session->setVar('order_status',$_POST['order_status'] );
	  }
	  $order_status = $php5Session->getVar('order_status');
	  
	  $page_session_name = "orders_list";
	  $page = new Page("SELECT count(*) as c FROM #__order WHERE order_status='$order_status '  ");

	   $query = "SELECT * FROM #__order WHERE order_status='$order_status '   ORDER BY order_id DESC  ". $page->show_limit()."  ";
	
		
      $page->updatepage(); 
      $smarty->assign('page' ,  $page->showpage($list_url) );
			  
	  if ( isset($_POST['phone']))
	  {
		$phone = $_POST['phone'];   
		$smarty->assign('phone' ,  $phone );
       $query = "SELECT * FROM #__order as o  WHERE (telephone1 LIKE '%$phone%') OR (telephone2 LIKE '%$phone%')     ";				  
	  }

      $php5DB_en->setQuery( $query );  
      $ds = $php5DB_en->loadAssocList();
	
	
	
		$ts_order_status = gen_select(add_prefix('order_status'), '' , 'order_status', 'order_status_id', 'caption', $order_status);		
		$smarty->assign('ts_order_status' ,  $ts_order_status );
		
		
	       	  $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'list1.tpl');
              $main_content= $smarty->fetch($tpl); 
	  

      $order = new Order();
	  
	  
	  foreach ( $ds as $d)
	  {	 
	  	$order_id = $d['order_id'];

/** update the sold to party number		
	   $order->loadData(add_prefix('order'),'order_id' ,$order_id);	   
	   $order->sold_to_party_no =  '0007' .  sprintf("%06s",  $d['user_id']  )  ;
	   $order->updateDB(add_prefix('order'),'order_id' ,$order_id);	 
	   $order->showVariables();
**/	   		
		$s_order_status = gen_select(add_prefix('order_status'), '' , 'order_status', 'order_status_id', 'caption', $d['order_status']);
		$s_payment_status = gen_select(add_prefix('payment_status'), '' , 'payment_status', 'payment_status_id', 'caption', $d['payment_status']);
		$s_delivery_status = gen_select(add_prefix('delivery_status'), '' , 'delivery_status', 'delivery_status_id', 'caption', $d['delivery_status']);
				
		$smarty->assign('s_order_status' ,  $s_order_status );
		$smarty->assign('s_payment_status' ,  $s_payment_status );	
		$smarty->assign('s_delivery_status' ,  $s_delivery_status );						
			 	  

		$smarty->assign('detail_link' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=detail&t=insite&id=' . $d['order_id'] 	, 0)  );			
		$smarty->assign('display_id' ,  $d['sales_order_number']  );
		$smarty->assign('sales_doc_type' ,  $d['sales_doc_type']  );			
		$smarty->assign('order_date' ,  $d['order_date'] . " " . $d['order_time'] );	
		$smarty->assign('name' ,  $d['name']  );	
		$smarty->assign('telephone1' ,  $d['telephone1']  );						
		$smarty->assign('delivery_status' ,  $d['delivery_status']  );	
		$smarty->assign('payment_status' ,  $d['payment_status']  );	
		$smarty->assign('url_change_status' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=change_status&t=insite&id=' . $d['order_id'] , 0)  );					
		$smarty->assign('url_delete' ,  sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=delete&t=insite&id=' . $d['order_id'] , 0)  );					

	    $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'list2.tpl');
        $main_content.= $smarty->fetch($tpl); 		
		
	  }

	  		

			  
	       	  $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'list3.tpl');
              $main_content.= $smarty->fetch($tpl); 
			  			  
	          break;
	
}


        $smarty->assign('main',$main_content);		