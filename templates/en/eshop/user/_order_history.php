<?php
$add_url = sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&task=address_book_add');

$user = new User();
$user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );




$main = "";

/**
if ( ($user->unpaid_order() > 0 ) AND 0)
{

$main .= "
<div style='padding-top:15px; font-size:12px;'>


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

**/
/////////////////////////////////////////////////////////////////////
if ($user->have_order())
{
	
$main .= "
<div style='padding-top:15px;'>

<div style='color#999;' class=header1 >ORDER HISTORY</div>
<br/>
";

  
  $query = "SELECT * FROM #__order WHERE user_id='".$php5Session->getVar('user_id')."'  ORDER BY order_date DESC ";
  $php5DB_en->setQuery( $query );  
  $orders = $php5DB_en->loadAssocList();
  $total = 0;
  $total_surcharge = 0; 
  
  $main .= "
  <div style='padding:5px;'>
  <table width=730 border=0 cellpadding=0 cellspacing=0>
   <th align=left WIDTH=150>SALES ORDER NUMBER</th>
  <th width=50 > </th>   	  
  <th align=center width=100>ORDER DATE</th>
  <th width=50 > </th>    
  <th align=left>DELIVERY STATUS</th>
  <th></th>  
</TABLE>
  </div>
  "; 
  foreach ( $orders as $order)
  {

  
	   $order_id = $order['order_id'];	     
	   $order_number = $order['reference_no'];
	   $sales_order_number = $order['sales_order_number'];	   
	   $order_date = convert_date1($order['order_date']);
	   $order_type = $order['sales_doc_type'];
	   $order2 = new Order();
	   $order2->loadData(add_prefix('order'), 'order_id' , $order['order_id']);
	   $delivery_status = $order2->get_delivery_status($order['delivery_status']);
	   $payment_status = $order2->get_payment_status($order['payment_status']);		

  		
      $query = "SELECT * FROM #__order_delivery WHERE order_id='".$order['order_id']."' ";
      $php5DB_en->setQuery( $query );  
      $order_deliveriess = $php5DB_en->loadAssocList();
	  
	  $product =   new Product();
	  $addon_product = new Product();
	  $cart = new Cart();
      $total_rate = 0;
	  $delivery_info =  "";
	  $i = 0;
			   
	  foreach ( $order_deliveriess as $order_delivery)
	  {	  	
	    $i = $i+1;
	    $delivery_surcharge = $order_delivery['surcharge'];	    
		$name = $order_delivery['shipto_name'];
		$address = $order_delivery['shipto_block'] . ", " . $order_delivery['shipto_unit'] . ", "  . $order_delivery['shipto_building'] .   
		           $order_delivery['shipto_address1'] . $order_delivery['shipto_address2'] . $order_delivery['shipto_address3'] ;
				   
      $query = "SELECT caption FROM #__delivery_status WHERE delivery_status_id='".$order_delivery['delivery_status']."' ";
      $php5DB_en->setQuery( $query );  
      $delivery_status = $php5DB_en->loadResult();
	  				   
 //       $main .= "<div style='border:1px solid #fff; background:#eee; padding:5px; 15px;'>Deliver To : $name , $address </div>";
        $delivery = "
		<table>
		  <tr>
		    <td width=330>
			  <p><b>Name : </b>". $order_delivery['shipto_title'] . " "  . $order_delivery['shipto_name']."</p>
			  <p><b>Company : </b> ". $order_delivery['shipto_company'] ."</p>
			  <p><b>Bloack / Unit : </b> ". $order_delivery['shipto_block']. " " . $order_delivery['shipto_unit'] ."</p>
			  <p><b>Building : </b> ". $order_delivery['shipto_building'] ."</p>
			  <p><b>Street : </b> ". $order_delivery['shipto_address1'] ."</p>
			  <p><b>Postal Code : </b> ". $order_delivery['shipto_postcode'] ."</p>
			  <p><b>City : </b> ". $order_delivery['shipto_city'] ."</p>
			  <p><b>State : </b> ". $order_delivery['shipto_state'] ."</p>
			  <p><b>Country : </b> ". $order_delivery['shipto_country'] ."</p>		
			  <p><b>Email : </b> ". $order_delivery['shipto_email'] ."</p>
			  <p><b>Mobile Number : </b> ". $order_delivery['shipto_telephone1'] ."</p>
			  <p><b>Work Number : </b> ". $order_delivery['shipto_telephone2'] ."</p>
			  <p><b>Fax Number : </b> ". $order_delivery['shipto_fax'] ."</p>	
			  			  	  			  			  			  			  			  
			</td>
			<td></td>
		    <td width=330 valign=top>
			  <p><b>Delivery Status : </b> ". $delivery_status . "</p>			
			  <p><b>Delivery Date : </b> ". convert_date1($order_delivery['from_date']) . " - " . convert_date1($order_delivery['to_date']) . "</p>
			  <p><b>Delivery Time : </b> ". $order_delivery['delivery_time'] .  "</p>			  
			  <p><b>Delivery Instruction : </b> ". $order_delivery['special_instruction']."</p>
			  <p><b>Message To : </b> ". $order_delivery['to_message'] ."</p>
			  <p><b>Message : </b> ". $order_delivery['message'] ."</p>
		      <p><b>Message From : </b> ". $order_delivery['from_message'] ."</p>	  
			</td>			
		  
		  </tr>
		  
		  
		</table>
		";	  



	   $order_item = new Order_item();
	   
	   $extra_table = "
					   <table border=0 width=700 border=1 cellspacing=0 cellpadding=0 height=15>
	
   	       	       	    <tr>
   	       	    	      <td valign=top  WIDTH=150 align=left ><b>ITEM</b></td>
   	       	    		  <td width=5    > </td>		
   	       	    	      <td valign=top  WIDTH=150 align=left   ><b>SKU</b></td>
   	       	    		  <td width=5   > </td>
   	       	    	      <td valign=top align=left width=50   ><b>QTY</b></td>
   	       	    		  <td width=5   > </td>		  
	   	       	          <td  valign=top align=left width=150  ><b>PRICE</b></td>
   	       	    		  <td   width=5 > </td>		  
   	       	    	      <td  valign=top align=left width=100   width=100><b>TOTAL</b></td>
   	       	    		  <td></td>			  		    
   	       	    	   </tr>
   	       	         </table>
					 	   
	   ";

              $query = "SELECT * FROM #__order_item WHERE delivery_id='".$order_delivery['order_delivery_id'] ."'  ORDER BY item_number ";
              $php5DB_en->setQuery( $query );  
              $order_items = $php5DB_en->loadAssocList();
			  $product = new Product();
			  
	          foreach ( $order_items as $order_item)
			  {
				     
                      $product->loadData(add_prefix('product'),'product_id', $order_item['product_id'] );
					  $oi = new Order_item();
		              $oi->loadData(add_prefix('order_item'), 'order_item_id', $order_item['order_item_id']);	
			  
					  $item_code =   $order_item['sku'];
					  $qty = $order_item['qty'];
					  $price =  $oi->get_discounted_price();
					  
					  $pre = "";
					  if ($oi->unit_price != $oi->get_discounted_price())
					  $pre = "<span style='text-decoration: line-through'>". price_tag($oi->unit_price)."</span> ";
					  
					  $total = $price*$qty;

					 $item_code2 =   $order_item['sku'];
					 $price2= $order_item['unit_price'];
					 $extra_table .= "
					   <table border=0 width=700  cellspacing=0 cellpadding=0 height=15>
	
   	       	       	    <tr>
   	       	    	      <td valign=top  WIDTH=150 align=left >".$product->name."</td>
   	       	    		  <td width=5    > </td>		
   	       	    	      <td valign=top  WIDTH=150 align=left   >".$product->sku."</td>
   	       	    		  <td width=5   > </td>
   	       	    	      <td valign=top align=left width=50   >$qty</td>
   	       	    		  <td width=5   > </td>		  
	   	       	          <td  valign=top align=left width=150  >". $pre . price_tag($price) ."</td>
   	       	    		  <td   width=5 > </td>		  
   	       	    	      <td  valign=top align=left width=100   width=100> " . price_tag($total)." </td>
   	       	    		  <td></td>			  		    
   	       	    	   </tr>
   	       	         </table>
				
					 ";
						 
		
		                 $query = "SELECT * FROM #__order_addon WHERE order_item_id = '". $order_item['order_item_id'] ."' ";
                         $php5DB_en->setQuery( $query );  
                         $oas = $php5DB_en->loadAssocList();
	                     $subtotal = 0;
	                     foreach ( $oas as $oa )
	                     {
	           		       $product->loadData(add_prefix('product'), 'product_id', $oa['addon_product_id']);	
	           	           $qty = $order_item['qty'];
	               	       $unit_price = $product->price;	
	           	           $total = number_format( ($unit_price * $qty) ,2);	
	           	           $subtotal +=  $total; 					   
			     
                          $extra_table .= "
						   <table border=0 width=700 border=0 cellspacing=0 cellpadding=0 height=15>
   	       	       	       <tr>
   	       	    	         <td valign=top  WIDTH=150 align=left >Add on : ".$product->name."</td>
   	       	    		     <td width=5    > </td>		
   	       	    	         <td valign=top  WIDTH=150 align=left   >".$oa['addon_sku']."</td>
   	       	    	   	     <td width=5   > </td>
   	       	    	         <td valign=top align=left width=50   >$qty</td>
   	       	    		     <td width=5   > </td>		  
	   	       	             <td  valign=top align=left width=150  >".price_tag($unit_price)." </td>
   	       	    		     <td   width=5 > </td>		  
   	       	    	         <td  valign=top align=left width=100   width=100>".price_tag($total) ."</td>
   	       	    		     <td></td>			  		    
   	       	    	       </tr>
   	       	              </table>
					 
					  "; 
	           		  }
				  
		
		
				  
			  }
	  
	  
        	   
 	   $delivery_info .=  "<div style='padding:10px; border:1px solid #ccc; margin-bottom:5px;'>". $delivery . $extra_table . "</div>";
	  


	  }
	  


        $main .= "
  <div class='expand_heading'><a href='#'>
  <table border=0 width=730 border=1 cellspacing=0 cellpadding=0>
	
   	    <tr>
	      <td valign=top  WIDTH=150 align=left >$sales_order_number</td>
		  <td   width=50 > </td>		  
	      <td  valign=top align=center width=100   width=100>$order_date </td>
		  <td   width=50 > </td>			  
		  <td>$delivery_status</td>			  		    
	   </tr>
   </table>

	   </a></div>	
	   
	<div class='toggle_container' style='border:1px solid #ccc;'>	
	    

		
		<div style='padding:15px;'>
          $delivery_info 
		</div>  
	</div>
	"; 			  

	  
        $main .= "


	   
	"; 		
	  $total_surcharge+= $delivery_surcharge;

  }
}

if ($main=="")
$main = "


<div style='color#999;' class=header1 >ORDER HISTORY</div>
<br/>
<br/><br/><br/>

";


$main .= "


<script type='text/javascript'>
$(document).ready(function(){
	$('.toggle_container').hide();
	$('.expand_heading').toggle(function(){
		$(this).addClass('active'); 
		}, function () {
		$(this).removeClass('active');
	});
	$('.expand_heading').click(function(){
		$(this).next('.toggle_container').slideToggle('slow');
	});
});
</script>
";
?>
