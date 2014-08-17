<?php
$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=show', 1));
$notification = "";
$main = "";
if ($php5Session->getVar('msg') != null)
{
  $main .= "<div class='message' style='margin-bottom:15px;'>".$php5Session->getVar('msg')."</div>";
}
$php5Session->setVar('msg' ,null);
$logined=1;
if ($php5Session->getVar('user_id') == null)
{
	$url_login = sefBuild($php5WebPath, 'index.php?o=eshop&m=register&t=outsite' , 1); 
   	$notification = "<div style='float:right'>*If you have an account, please log in from <a href='$url_login'>here</a> to make use of your address book.</div>
	<div style='clear:both;'></div>
	";
	$logined=0;
}
$main .= "


<div style='padding:0px 10px 0px 10px; margin-top:-5px;'>

<h2 style='padding-top:0px; padding-left:3px;'>Shopping Cart</h2>
$notification 
<br/>
<table width=100% class=cart cellspacing=0  border=0>
<tr style='background:#f6f2e9; height:30px;'>
<td align=left>&nbsp; &nbsp;  PRODUCT</td>
<td align=left widtd=250>DESCRIPTION</td>
<td> &nbsp; </td>
<td align=left>QTY</td>
<td align=left>PRICE<td>
<td align=left >TOTAL</td>
<td width=25>  &nbsp; </td>
<td >RECIPIENT</td>
<td align=left></td>
<td align=center> ACTION </td>
<td></td>
</tr>
<tr>
  <td colspan=12 style='border-top:1px solid #ccc;'></td>
</tr>
";

$applied_coupon_code = $php5Session->getVar('coupon_code');
$url_apply_coupon = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=apply_coupon');

if ($applied_coupon_code) {	
 	$show_coupon_code = "<br/>Coupon: " . $php5Session->getVar('coupon_code');
} else
 $show_coupon_code = "
 <form action='$url_apply_coupon' method=post>
  <span style=\"color:#000\">If you have a discount code or gif voucher code, enter here and click Update</span> <br />
 <table>
   <tr>
	 <td>
	 <input type=text name=coupon_code size=50>&nbsp;&nbsp;&nbsp;
	 </td>
	 <td>
	 <input type='image' src='{$php5WebPath}/images/update.jpg' style='width:66px; height:24px; border:0px;' ></td>
   </tr>
 </table>


 <input type=hidden name=i value=$i  > 

 </form>
 
 ";
 
 $max = $php5Session->getVar('counter');	
	$product = new Product(); 
	$addon_product = new Product;
	$cart = new Cart();
//	$cart->showVariables();

	$total = 0;
	$discounted = 0;
	
 for ($i=1; $i<$max; $i++)
 if (   $cart->unique_item( $i,$php5Session->getVar('pid'.$i) ) )
 {
	$pid = $php5Session->getVar('pid'.$i);  
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i) );
	$qty = $php5Session->getVar('qty'.$i); 
	$qty = $cart->get_qty($php5Session->getVar('pid'.$i) ); 
	
	$sku = $product->sku;
	$qty_input = gen_select2(add_prefix('number'), 'id' , 'qty' , 'id', 'id' , $qty , '', "onChange=document.getElementById('$sku').submit();", 0);	
	$name = $product->name;
	$image = $product->image(70,70,$product->image);
	$image2 = $product->image(200,200,$product->image);	

	$r =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $i );

	$rate = $r['product_n_addon'];
	$product_rate =  $r['product_rate'];
	$discounted += $r['discounted'];
	$product_total = $product_rate * $qty;
    $total_rate = $qty * $rate;
	
	$remove_btn = $cart->remove_btn($php5Session->getVar('pid'.$i));
	
	$recipient = $cart->show_select_recipients($php5Session->getVar('pid'.$i) );
	$options = $cart->show_options($i);

	$addon_line = "";
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$i); $a++)
//	if ($addon_product->product_id)
	{
	  $remove_btna = $cart->remove_btn_add($pid, $a );	
      $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i . "_" . $a));			  
	  $addon_image = $addon_product->image(150,150,$addon_product->image);
	  $addon_thumb = "<a href='' rel=tooltip title=\"".$addon_image."\" >" . $addon_product->image(70,70,$addon_product->image). "</a>";
	  $addon_name = "<b>Add on : ".$addon_product->name . "</b>";
	  $addon_price = price_tag(  $addon_product->price );
	  $addon_total = price_tag( $addon_product->price * $qty) ;
	  $addon_line .="<tr>
	   <td align=center valign=top >$addon_thumb </td>
	   <td  valign=top>$addon_name</td>	     
	   <td></td>	   
	   <td align=left  valign=top>$qty</td>	  

	   <td align=left  valign=top>$addon_price</td>	
	   <td></td>	   	
	   <td  align=left  valign=top>$addon_total</td>		
	   <td></td>	   		   
	   <td></td>	
	   <td></td>	   		     	      	
	   <td align=center  valign=top> $remove_btna</td>	   		   	            
	  </tr>
	  ";
	}

$url_detial = sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&t=outsite&task=show&id=' . $product->product_id , 1);
 	
    $main .= "
	<tr>
	  
	  <td width=100 height=70 align=center valign=top><a href='$url_detial' class=tooltip rel=tooltip title=\"".$image2."\" >$image</a></td>	
	  <td valign=top><b>$name</b><BR/><font size=1>$sku</font></td>
	  <td></td>
	  <td valign=top><form action='$url_cart_qty_change' id='$sku' method=post>
	          $qty_input 
	          <input type=hidden name=i value=$i  >
			  <input type=hidden name=pid value=$pid  >
		  </form>
	  </td>
	  <td align=left width=90 valign=top>". price_tag($product_rate)."</td>
	  <td width=40></td>

	  <td  width=70 align=left valign=top>". price_tag($product_total)."</td>
	  <td width=50></td>
	  <td><div style='float:left; padding-right:25px;'>$options</div> 
	       <div style='float:left;'>$recipient</div> </td>
	  <td> &nbsp; </td>
	  <td ><center>$remove_btn</center></td>	  	  	  
	</tr>
	$addon_line
	<tr><td colspan=12 style='border-top:1px dotted #999;'> &nbsp;</td></tr>
	"; 	
	$total += $total_rate;
 }
    $subbtotal = $total;
	$total_recipient = $cart->get_total_recipient();
	$config = new Configuration();
	
	$delivery_fee = $total_recipient*$config->get_value('config_delivery_charge') ;
	
	$coupon = new Coupon();
	$coupon->loadData( add_prefix('coupon'), 'coupon_code' , $applied_coupon_code );
//	echo  $applied_coupon_code;
//	$coupon->showVariables();
	if ($coupon->free_delivery)
	$delivery_fee = 0;
	
	
    $gst = $product->gst($total +$delivery_fee );
	$total = $total + $gst + $delivery_fee;
	$php5Session->setVar('cart_total', $total);
	
    $main .= "
</table>
<table width=100%>	
 <tr>
   <td valign=top>
      <div style='padding:10px;'>
    	<b style=\"font-size:14px;\">Discount Code or Gift Voucher</b><br/><br/>
		$show_coupon_code
		<br/>
		<br/>
		<b style=\"font-size:14px;\">Bulk Order</b><br/>
		<p>
		For bulk order of more than 20 gifts, please download our <a href='$php5WebPath/download/order_form.xls'>online ordering form</a><br/>
		and email to online@humming.com.sg.<br/><br/>
		Kindly note that all gift purchases are valid for Singapore delivery only.
		</p>
	</div>	
   </td>
   <td></td>
   <td width=400 valign=top align=left>
     <div style='background:#eee; padding:15px; margin-bottom:5px;'>
        <table width=100%>

	  
		  <tr>
		    <td width=\"75%\">Sub-total</td>
			<td align=left>". price_tag($subbtotal) ."</td>
		  </tr>		
		  <tr>
		    <td width=\"75%\">Discounted</td>
			<td align=left>(". price_tag($discounted) .")</td>
		  </tr>				  
		  <tr>
		    <td>Estimated Delivery Charge</td>
			<td align=left>". price_tag($delivery_fee) ."</td>
		  </tr>		  
		  <tr>
		    <td>GST</td>
			<td align=left>".price_tag($gst)."</td>
		  </tr>		
		  <tr>
		    <td colspan=3><div style='border-top:1px dotted #333; margin:10px 0px 10px 0px; height:!px;'></div></td>
		  </tr>			  	
		  <tr>
		    <td><font style='font-size:16px;font-weight:bold;'>Grand total</font></td>
			<td align=left><font style='font-size:16px;font-weight:bold;'>". price_tag($total)."</font></td>
		  </tr>			      
		</table>   
     </div>
		 <table width=100%><tr><td>
	 <a href='".$php5Session->getVar('storepage_shopping')."' ><img src='{$php5WebPath}/images/continue.jpg'></a> &nbsp;  &nbsp;  &nbsp; 
	 </td><td align=right><img style='cursor:pointer;' src='{$php5WebPath}/images/checkout.jpg' onClick='check_recipient($max, $logined)' ></td></tr>
	 </table>
   </td>
 </tr> 
 </table>
 
 <script language=javascript>
 function check_recipient(max, logined){ 
   go = 1;
   for(i=1; i<max; i++)
   {
	  if (document.getElementById('recipient'+i).value=='-2') {		
		go = 0;  
	    document.getElementById('alert'+i).style.display=''; 
	  }
   } 
   if (go){
	    if (logined)
   			window.location='".sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=shipping_address&id=1' , 1)."';
		else
			window.location='".sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1)."';
   }
 }
 </script>
 ";
//$php5Session->setVar('coupon_code', '');	
$php5Session->setVar('gst', price_tag($gst));
$php5Session->setVar('ship', price_tag($delivery_fee));
$php5Session->setVar('subbtotal', price_tag($subbtotal));
?>