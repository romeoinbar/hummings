<?php
error_reporting(0);
ini_set('memory_limit', '10000M');
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
$smarty->assign('task', ($task!="")?$task:'tab1' );
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
	//$order->order_time = date("h i s", strtotime($order->order_time));
	$user= new User();
	$user->loadData(add_prefix('user'), 'user_id', $order->user_id);	
	$smarty->assign('user' ,  $user);		
	$smarty->assign('order' ,  $order);	
	$smarty->assign('order_id' ,  sprintf("%06s",$order->order_id) );			
	$smarty->assign('order' ,  $order);			
	$smarty->assign('country' ,  gen_select(add_prefix('country'), 'country', 'country', 'country_code', 'country',  $order->country) );			
	$smarty->assign('url_export' ,  sefBuild($php5WebPath, 'index.php?o=export_orders&m=main&task=export&id='.$id, 0)  );	
	$smarty->assign('url_export_customer' ,  sefBuild($php5WebPath, 'index.php?o=export_orders&m=customers&task=export&id='.$id, 0)  );		
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
			  // Check free delivery coupon
			  $php5DB_en->setQuery( "SELECT free_delivery FROM #__coupon WHERE coupon_code='".$order_item->promotions_id."'" );
			  if (!$php5DB_en->loadResult())			  
	    	  	$surcharge += $order_item->get_surcharge();				  	 
			  			   
		      $total = $unit_price * $qty;	
		      $subtotal +=  $total; 	
			  	  
		      $items .= "
		       <tr>
	     	    <td style='font-size:16px;'>".$product->name."</td>
		        <td style='font-size:16px;'>".$itm['sku']."</td>
		        <td style='font-size:16px;'>$qty</td>	
		        <td align=right style='text-align:right; font-size:16px;'>". price_tag($unit_price)."</td>	
		        <td align=right  style='text-align:right; font-size:16px;'>". price_tag($total) ."</td>												
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
	     	    <td style='font-size:16px;'> Addon : ".$product->name."</td>
		        <td style='font-size:16px;'>".$oa['addon_sku']."</td>
		        <td style='font-size:16px;'>$qty</td>	
		        <td align=right style='text-align:right; font-size:16px;'>". price_tag($unit_price)."</td>	
		        <td align=right  style='text-align:right; font-size:16px;'>-</td>												
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
	$limit = 100;
	
			  
	  $sWhere = "";	  
	  $query = "";
	  if ( isset($_POST['phone'])&&($_POST['phone']!='')) {
		$phone = $_POST['phone']; 
		$sWhere .= " AND ((telephone1 LIKE '%$phone%') OR (telephone2 LIKE '%$phone%'))";	  
		$smarty->assign('phone' ,  $phone );   			   		  
	  }
	  
	  if ( isset($_POST['orderID'])&&($_POST['orderID']!="")) {
		  $sWhere .= " AND sales_order_number LIKE'%".$_POST['orderID']."%'";
		  $smarty->assign('orderID' ,  $_POST['orderID'] );				  
	  }
	  
	 $query_total = "SELECT count(order_id) FROM #__order  WHERE 1 ".$sWhere;		
	 $query = "SELECT * FROM #__order  WHERE 1 ".$sWhere;
	 
	  // New
	  // Paging1
	  $query_total1 = $query_total. " AND order_status=0 ORDER BY order_date DESC, order_id DESC";
	  $php5DB->setQuery( $query_total1 );
	  $recordTotal1 = $php5DB->loadResult();
	  $currPage = php5GetParam($_REQUEST, 'p', 1);		
	  $startLimit= ($currPage - 1) * $limit;	  
	  $pageTotal = ceil($recordTotal1 / $limit);
	  $currPage = $currPage > $pageTotal ? $pageTotal : $currPage;
	  
	  $query1 = $query. " AND order_status=0 ORDER BY order_date DESC, order_id DESC LIMIT $startLimit, $limit";
	 
      $php5DB_en->setQuery( $query1 );  
      $ds = $php5DB_en->loadAssocList();	  
	  $rows = parseOrderInfo($ds);
	  
	  
	  
	  $paging1 = new php5Paging($pageTotal, $currPage);
	  $paging1->url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab1', 0)."?";
	  
	  
	  $smarty->assign('count' ,  $recordTotal1);
	  // Processed
	  
	    // Paging2
	  $query_total2 = $query_total. " AND order_status=2 ORDER BY order_date DESC , order_id DESC";
	  $php5DB->setQuery( $query_total2 );
	  $recordTotal2 = $php5DB->loadResult();
	  $currPage2 = php5GetParam($_REQUEST, 'p', 1);			
	  $startLimit= ($currPage2 - 1) * $limit;
	  
	  $pageTotal = ceil($recordTotal2 / $limit);
	  $currPage2 = $currPage3 > $pageTotal ? $pageTotal : $currPage2;
	  
	  $query2 = $query. " AND order_status=2 ORDER BY order_date DESC , order_id DESC LIMIT $startLimit, $limit";
	   
      $php5DB_en->setQuery( $query2 );  
      $ds2 = $php5DB_en->loadAssocList();
	  $rows2 = parseOrderInfo($ds2);
	  $smarty->assign('rows2' ,  $rows2);
	
	  $paging2 = new php5Paging($pageTotal, $currPage2);
	  $paging2->url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab2', 0)."?";
	  $smarty->assign('count2' ,  $recordTotal2);
	  
	  // Cancelled
	   // Paging3
	  $query_total3 = $query_total. " AND order_status=3 ORDER BY order_date DESC , order_id DESC";
	  $php5DB->setQuery( $query_total3 );
	  $recordTotal3 = $php5DB->loadResult();	
	  $currPage3 = php5GetParam($_REQUEST, 'p', 1);	
	  $startLimit= ($currPage - 1) * $limit;
	  
	  $pageTotal = ceil($recordTotal3 / $limit);
	  $currPage3 = $currPage3 > $pageTotal ? $pageTotal : $currPage3;
	  
	  $query3 = $query. " AND order_status=3 ORDER BY order_date DESC , order_id DESC LIMIT $startLimit, $limit";	  
      $php5DB_en->setQuery( $query3 );  
      $ds3 = $php5DB_en->loadAssocList();
	  $rows3 = parseOrderInfo($ds3);
	  $smarty->assign('rows3' ,  $rows3);
	  
	  $paging3 = new php5Paging($pageTotal, $currPage3);
	  $paging3->url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab3', 0)."?";
		
	  $smarty->assign('count3' ,  $recordTotal3);
	  
	  // Resurrect
	  // Paging4
	  $query_total4 = $query_total. " AND order_status=4 ORDER BY  order_date DESC, order_id DESC";
	  $php5DB->setQuery( $query_total4 );
	  $recordTotal4 = $php5DB->loadResult();
	  $currPage4 = php5GetParam($_REQUEST, 'p', 1);			
	  $startLimit= ($currPage4 - 1) * $limit;
	  
	  $pageTotal = ceil($recordTotal4 / $limit);
	  $currPage4 = $currPage4 > $pageTotal ? $pageTotal : $currPage4;
	  
	  $query4 = $query. " AND order_status=4 ORDER BY  order_date DESC, order_id DESC LIMIT $startLimit, $limit";	  
      $php5DB_en->setQuery( $query4 );  
      $ds4 = $php5DB_en->loadAssocList();
	  $rows4 = parseOrderInfo($ds4);
	  $smarty->assign('rows4' ,  $rows4);
	  
	   
	  $paging4 = new php5Paging($pageTotal, $currPage4);
	  $paging4->url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab4', 0)."?";
		
	  $smarty->assign('count4' ,  $recordTotal4);
	  
	  // Resurrect
	  
	  // Paging5
	$query_total5 = $query_total. " AND order_status=5 ORDER BY  order_date DESC, order_id DESC";
	$php5DB->setQuery( $query_total5 );
	$recordTotal5 = $php5DB->loadResult();	
	$currPage5 = php5GetParam($_REQUEST, 'p', 1);		
	$startLimit= ($currPage5 - 1) * $limit;
	
	$pageTotal = ceil($recordTotal5 / $limit);
	$currPage5 = $currPage5 > $pageTotal ? $pageTotal : $currPage5;
	  
	$query5 = $query. " AND order_status=5 ORDER BY  order_date DESC, order_id DESC LIMIT $startLimit, $limit";	
	$php5DB_en->setQuery( $query5 );  
	$ds5 = $php5DB_en->loadAssocList();
	$rows5 = parseOrderInfo($ds5);
	$smarty->assign('rows5' ,  $rows5);	 
	   
	 
	$paging5 = new php5Paging($pageTotal, $currPage5);
	$paging5->url = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab5', 0)."?";
	  	
	 $smarty->assign('count5' ,  $recordTotal5);  

	 $smarty->assign('rows' ,  $rows);	
	 $smarty->assign('paging1', $paging1->showDivPages());
	 $smarty->assign('paging2', $paging2->showDivPages());
	 $smarty->assign('paging3', $paging3->showDivPages());
	 $smarty->assign('paging4', $paging4->showDivPages());
	 $smarty->assign('paging5', $paging5->showDivPages());	
	 $smarty->assign('url1', sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab1', 0));	
	 $smarty->assign('url2', sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab2', 0));	
	 $smarty->assign('url3', sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab3', 0));	
	 $smarty->assign('url4', sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab4', 0));	
	 $smarty->assign('url5', sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=tab5', 0));	
	 	
	 $tpl = sprintf($php5TemplateAdminFile, $language, 'orders', 'list.tpl');
     $main_content.= $smarty->fetch($tpl); 			  			  
	  break;
	
}

function parseOrderInfo($ds){
	global $php5WebPath, $php5DB_en;
	 $rows = array();
	  $j=0;	 
	  foreach ( $ds as $d) {	 
	  	$order_id = $d['order_id'];
		
		$arr_del_status = array('N'=>'PENDING','O'=>'Processed', 'R'=>'On The Road', '4'=>'Complete', '5'=>'Cancelled', 'P'=>'Problem', 'T'=>'Not In' );
		
		$query = "SELECT od.*, ds.caption 
				FROM #__order_delivery AS od
				LEFT JOIN #__delivery_status AS ds ON od.delivery_status = ds.delivery_status_id
				WHERE od.order_id = '$order_id' ";
        $php5DB_en->setQuery( $query ); 
		
		$saps = $php5DB_en->loadObjectList();
		foreach ($saps as $sap){
			
			$query1 = "SELECT oi.*, p.*
					FROM #__order_item AS oi
					INNER JOIN #__product AS p ON oi.product_id = p.product_id
					WHERE order_id='$order_id' AND delivery_line='".$sap->delivery_line."'";
			$php5DB_en->setQuery( $query1 );
			$products = $php5DB_en->loadObjectList();
			$sap->products = $products;
			$sap->from_date = date("d/m/Y", strtotime($sap->from_date));
			$sap->to_date = date("d/m/Y", strtotime($sap->to_date));
			$sap->status_in_sap = $arr_del_status[$sap->delivery_status_sap];
		}
		
		$s_order_status = gen_select(add_prefix('order_status'), '' , 'order_status', 'order_status_id', 'caption', $d['order_status']);
		$s_payment_status = gen_select(add_prefix('payment_status'), '' , 'payment_status', 'payment_status_id', 'caption', $d['payment_status']);
		$s_delivery_status = gen_select(add_prefix('delivery_status'), '' , 'delivery_status', 'delivery_status_id', 'caption', $d['delivery_status']);
		
		$rows[$j]->s_order_status = $s_order_status;
		$rows[$j]->s_payment_status = $s_payment_status;
		$rows[$j]->s_delivery_status = $s_delivery_status;
		
		$rows[$j]->detail_link	= sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=detail&t=insite&id=' . $d['order_id'] 	, 0);
		$rows[$j]->display_id = $d['sales_order_number'];
		$rows[$j]->sales_doc_type = $d['sales_doc_type'];
		$rows[$j]->order_date = $d['order_time'].'<br>'.date("d.m.Y", strtotime($d['order_date']));
		$rows[$j]->name =  $d['name'];
		$rows[$j]->telephone1 = $d['telephone1'];
		$rows[$j]->delivery_status = $d['delivery_status'];
		$rows[$j]->payment_status = $d['payment_status'] ;
		$rows[$j]->url_change_status = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=change_status&t=insite&id=' . $d['order_id'] , 0) ;
		$rows[$j]->url_delete = sefBuild($php5WebPath, 'index.php?o=orders&m=main&task=delete&t=insite&id=' . $d['order_id'] , 0);
		$rows[$j]->kindof = $d['kindof'];
		$rows[$j]->payment_terms = $d['payment_terms'];		
		$rows[$j]->saps = $saps;
		$j++;
	  }
	  return $rows;
}
$smarty->assign('main',$main_content);		