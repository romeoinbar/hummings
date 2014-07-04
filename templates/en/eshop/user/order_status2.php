<?php
$add_url = sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_add');

$user = new User();
$user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );




$main = "";
if ($user->unpaid_order() > 0 )
{

$main .= "
<div style='padding-top:15px; font-size:12px;'>

<div class=message>Order recorded. Once customer made their payment, the order status will change to 'confirmed'.</div>

<h1>Unpaid Order</h1>
<br/>
";

			$product = new Product();  
  $query = "SELECT * FROM #__order_delivery WHERE user_id='".$php5Session->getVar('user_id')."'  ORDER BY order_delivery_id DESC ";
  $php5DB_en->setQuery( $query );  
  $order_deliveries = $php5DB_en->loadAssocList();
  $total = 0;
  $total_surcharge = 0;  
  foreach ( $order_deliveries as $order_delivery)
  {

   $url_cancel = sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&t=outsite&task=cancel&id=' .$order_delivery['order_delivery_id'] , 1);
   
      $delivery_surcharge = $order_delivery['surcharge'];	    
		$name = $order_delivery['shipto_name'];
		$address = $order_delivery['shipto_block'] . ", " . $order_delivery['shipto_unit'] . ", "  . $order_delivery['shipto_building'] .   
		           $order_delivery['shipto_address1'] . $order_delivery['shipto_address2'] . $order_delivery['shipto_address3'] ;
        $main .= "<div style='border:1px solid #fff; background:#eee; padding:5px; 15px;'>Deliver To : $name , $address <div style='float:right'><a href='$url_cancel'>>> Cancel</a></div></div>";	  
		
    $main .= "<table border=0 width=635>
  <th align=left>Date</th>
  <th></th>  	
  <th align=left>Order Number</th>
  <th></th>  
  <th align=left>Type</th>
  <th></th>  
  <th align=left>Item</th>
  <th></th>  
  <th align=left>Qty</th>
  <th></th>  
  <th  align=right>Total rate</th>      
  <th></th>         
  ";
  		
      $query = "SELECT * FROM #__order WHERE delivery_id='".$order_delivery['order_delivery_id']."' AND payment_status=0";
      $php5DB_en->setQuery( $query );  
      $orders = $php5DB_en->loadAssocList();
	  
	  $product =   new Product();
	  $addon_product = new Product();
	  $cart = new Cart();
      $total_rate = 0;
			   
	  foreach ( $orders as $order)
	  {	  	
	     
	   $order_number = $order['order_id'];
	   $order_date = $order['order_date'];
	   $order_type = $order['sales_doc_type'];

        $query = "SELECT * FROM #__order_item WHERE order_id='".$order['order_id']."' ";
        $php5DB_en->setQuery( $query );  
        $order_items = $php5DB_en->loadAssocList();
		
		$show_qty = "";
		$show_rate = "";
		$show_item = "";				
					   
	    foreach ( $order_items as $order_item)
		{
	        $qty =  $order_item['qty']; 
	        $rate = $order_item['unit_price'];

			$product->loadData(add_prefix('product'), 'product_id', $order_item['product_id']);
            $total_rate = $qty * $rate;
	        $total+= $total_rate;
	  									
		    $show_qty = ($show_qty == "") ? $qty : $show_qty . "<br/>" . $qty;	
		    $show_item = ($show_item == "") ? $product->name : $show_item . "<br/>" . $product->name;							
//	   $image = $product->image(70,70,$product->image);
//	   $name =  "<a href='' rel=tooltip title='$image' >" . $product->name . "</a>" . " ($sku)";
		    $show_rate = ($show_rate == "") ? price_tag($rate) : $show_rate . "<br/>" . price_tag($rate);		   


//       $product->loadData(add_prefix('product'), 'product_id', $order['product_id']);
//       $addon_product->loadData(add_prefix('product'), 'product_id', $order['addon_product_id']);	   			
		}
	  	   	   	    


	   
        $main .= "
   	    <tr>
	      <td valign=top >$order_date</td>
		  <td></td>		
	      <td valign=top >$order_number</td>
		  <td></td>
	      <td valign=top >$order_type</td>
		  <td></td>		  
	      <td  valign=top  >$show_item </td>
	      <td width=40></td>
	      <td  valign=top >$show_qty</td>
		  <td></td>		  
	      <td  width=90 align=right  valign=top >$show_rate</td>
	      <td></td> 			  		    
	   </tr>
	"; 			   	   
	  


	  }
	  
	  
        $main .= "
   	    <tr>
	      <td colspan=10 align=right>Delivery surcharge :</td> 
	      <td align=right>". price_tag($delivery_surcharge) ."</td> 			  		    
	   </tr>
	   <tr>
	     <td colspan=13> &nbsp; </td>
	   </tr>
	   </table>
	"; 		
	  $total_surcharge+= $delivery_surcharge;

  }
  
  $grand_total = $total + $product->gst($total) + $total_surcharge;
  

    $main .= "
	<table border=0 width=635>
   	    <tr>
	      <td colspan=10 align=right>Sub Total :</td> 
	      <td align=right>". price_tag($total) ."</td> 			  		    
	   </tr>
   	    <tr>
	      <td colspan=10 align=right>GST :</td> 
	      <td align=right>". price_tag($product->gst($total)) ."</td> 			  		    
	   </tr>
   	    <tr>
	      <td colspan=10 align=right>Surcharge :</td> 
	      <td align=right>". price_tag($total_surcharge) ."</td> 			  		    
	   </tr>
   	    <tr>
	      <td colspan=10 align=right><b>Total :</b></td> 
	      <td align=right><b>". price_tag($grand_total) ."</b></td> 			  		    
	   </tr>		   	   	   
	   <tr>
	     <td colspan=13> &nbsp; </td>
	   </tr>

  </table>
	";

	  
$main .= "
<div style='float:right'>
<a href='$php5WebPath/cart/eshop/payment/enets/'>
   <img src='$php5WebPath/images/payment_enets.jpg' border=0 
     onMouseover=this.src='$php5WebPath/images/payment_enets2.jpg'  
     onMouseOut=this.src='$php5WebPath/images/payment_enets.jpg' >
</a>
</div>
<div style='border-bottom:1px dotted #333; padding-top:15px; margin-bottom:5px; clear:both;'></div>
</div>

";
}


/////////////////////////////////////////////////////////////////////
if ($user->have_order())
{
$main .= "
<div style='padding-top:15px;'>

<h1>Order History</h1>
<br/>
";

  
  $query = "SELECT * FROM #__order_delivery WHERE user_id='".$php5Session->getVar('user_id')."'  ORDER BY order_delivery_id DESC ";
  $php5DB_en->setQuery( $query );  
  $order_deliveries = $php5DB_en->loadAssocList();
  $total = 0;
  $total_surcharge = 0;  
  foreach ( $order_deliveries as $order_delivery)
  {

  
      $delivery_surcharge = $order_delivery['surcharge'];	    
		$name = $order_delivery['shipto_name'];
		$address = $order_delivery['shipto_block'] . ", " . $order_delivery['shipto_unit'] . ", "  . $order_delivery['shipto_building'] .   
		           $order_delivery['shipto_address1'] . $order_delivery['shipto_address2'] . $order_delivery['shipto_address3'] ;
        $main .= "<div style='border:1px solid #fff; background:#eee; padding:5px; 15px;'>Deliver To : $name , $address </div>";	  
		
    $main .= "<table border=0 width=630>
  <th align=left>Date</th>
  <th></th>  	
  <th align=left>Order Number</th>
  <th></th>  
  <th align=left>Type</th>
  <th></th>  
  <th align=left>Delivery Status</th>
  <th></th>  
  <th align=left>Payment Status</th>  
  ";
  		
      $query = "SELECT * FROM #__order WHERE delivery_id='".$order_delivery['order_delivery_id']."' ";
      $php5DB_en->setQuery( $query );  
      $orders = $php5DB_en->loadAssocList();
	  
	  $product =   new Product();
	  $addon_product = new Product();
	  $cart = new Cart();
      $total_rate = 0;
			   
	  foreach ( $orders as $order)
	  {	  	
	     
	   $order_number = $order['order_id'];
	   $order_date = $order['order_date'];
	   $order_type = $order['sales_doc_type'];
	   $order2 = new Order();
	   $order2->loadData(add_prefix('order'), 'order_id' , $order['order_id']);
	   $delivery_status = $order2->get_delivery_status($order['delivery_status']);
	   $payment_status = $order2->get_payment_status($order['payment_status']);
	   
        $main .= "
   	    <tr>
	      <td valign=top >$order_date</td>
		  <td></td>		
	      <td valign=top >$order_number</td>
		  <td></td>
	      <td valign=top >$order_type</td>
		  <td></td>		  
	      <td  valign=top  >$delivery_status </td>
		  <td></td>		  
	      <td  valign=top  >$payment_status </td>			  		    
	   </tr>
	"; 			   	   
	  


	  }
	  
	  
        $main .= "
	   <tr>
	     <td colspan=13> &nbsp; </td>
	   </tr>
	   </table>
	"; 		
	  $total_surcharge+= $delivery_surcharge;

  }
}

if ($main=="")
$main = "
<div style='padding-top:15px;'>

<h1>Order History</h1>
<br/><br/><br/>
<input type=button value=' Back ' onClick=window.location='". sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account', 1) ."'  class=button >
</div>
";
?>