<?php
$user = new User();
$user->loadData(add_prefix('user'), 'user_id', $php5Session->getVar('user_id') );
$order_payment = new Order_payment();
$order_payment->payment_type='enets';
$order_payment->addDB(add_prefix('order_payment'));
$order_payment->updateID('order_payment_id');

$main = "";
if ($user->unpaid_order())
{
$main .= "
<div style='padding-top:15px;'>

<h1>Pay by eNets</h1>
<br/>
";
    $main .= "<table border=0>
  <th align=left>Date</th>
  <th></th>  	
  <th align=left>To</th>
  <th></th>  
  <th align=left>Item</th>
  <th></th>  
  <th align=right>Rate</th>
  <th></th>  
  <th align=left>Qty</th>
  <th></th>  
  <th  align=right>Total rate</th>      
  <th></th>         
  ";
  
  $query = "SELECT * FROM #__order_delivery WHERE user_id='".$php5Session->getVar('user_id')."'  ORDER BY order_delivery_id DESC ";
  $php5DB_en->setQuery( $query );  
  $order_deliveries = $php5DB_en->loadAssocList();
  $total = 0;
  $total_surcharge = 0;  
  foreach ( $order_deliveries as $order_delivery)
  {

  
    $delivery_surcharge = $order_delivery['surcharge'];
      $query = "SELECT * FROM #__order WHERE delivery_id='".$order_delivery['order_delivery_id']."' AND payment_status=0";
      $php5DB_en->setQuery( $query );  
      $orders = $php5DB_en->loadAssocList();
	  
	  $product =   new Product();
	  $addon_product = new Product();
	  $cart = new Cart();

			   
	  foreach ( $orders as $order)
	  {	  	  
       $product->loadData(add_prefix('product'), 'product_id', $order['product_id']);
       $addon_product->loadData(add_prefix('product'), 'product_id', $order['addon_product_id']);
	   $to = $order_delivery['to_message'];	   
	   $qty =  $order['qty'];
	   $sku =  $order['sku'];	   
	   $image = $product->image(70,70,$product->image);
	   $name =  "<a href='' rel=tooltip title='$image' >" . $product->name . "</a>" . " ($sku)";	   
	   $rate = $order['unit_price'];
       $total_rate = $qty * $rate;
	   $date = $order['order_date'];
	   
        $main .= "
   	    <tr>
	      <td>$date</td>
		  <td></td>		
	      <td>$to</td>
		  <td></td>
	      <td>$name</td>
		  <td></td>		  
	      <td align=right width=90 align=right>". price_tag($rate)."</td>
	      <td width=40></td>
	      <td align=center>$qty</td>
		  <td></td>		  
	      <td  width=90 align=right>". price_tag($total_rate)."</td>
	      <td></td> 			  		    
	   </tr>
	"; 			   	   
	  
	  $total+= $total_rate;

	  }
	  
	  
        $main .= "
   	    <tr>
	      <td colspan=10 align=right>Delivery surcharge :</td> 
	      <td align=right>". price_tag($delivery_surcharge) ."</td> 			  		    
	   </tr>
	   <tr>
	     <td colspan=13> &nbsp; </td>
	   </tr>
	"; 		
	  $total_surcharge+= $delivery_surcharge;

  }
  
  $grand_total = $total + $product->gst($total) + $total_surcharge;
  

    $main .= "
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

  
echo "
<body onload=document.cart.submits();>
<form name='cart' method='post' action='https://www.enets.sg/enets2/enps.do'>
<input type='hidden' name='amount' value='$grand_total'>
<input type='hidden' name='txnRef' value='". $order_payment->order_payment_id ."'>
<input type='hidden' name='mid' value='947773019'>
<input type='hidden' name='umapiType' value='lite'>
<input type=submit>
</form>
</body>
";


}


?>