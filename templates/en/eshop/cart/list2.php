<?php


$list = "

<div style='padding:0px;'>
<table width=100% class=cart cellspacing=15 >
<th align=left>Ref</th>
<th align=center>Image</th>
<th align=left>Item</th>
<th align=right>Rate</th>
<th></th>
<th align=left>Qty</th>
<th align=right>Total Rate</th>
<th align=left></th>
<tr>
  <td colspan=7 style='border-top:1px solid #ccc;'></td>
</tr>
";

 $max = $php5Session->getVar('counter');	
	$product = new Product(); 
	$addon_product = new Product;
	$cart = new Cart();
	$total = 0;
	
 for ($i=1; $i<$max; $i++)
 {
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i));
    $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i));		
	$qty = $php5Session->getVar('qty'.$i); 
	
	$addon_name="";
	if ($addon_product->product_id)
	{
	  $addon_image = $addon_product->image(200,200,$addon_product->image);
	  $addon_name = "<br/> + <a href='' rel=tooltip title='$addon_image' >".$addon_product->name . "</a>";
	}

	$sku = $product->sku;
	$name = $product->name;
	$image = $product->image(70,70,$product->image);
	$image2 = $product->image(200,200,$product->image);	
	$rate =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'.$i));
    $total_rate = $qty * $rate;
	$url_remove = sefBuild($php5WebPath, 'index.php?o=eshop&m=cart&task=remove&id='.$i , 1);

$applied_coupon_code = $php5Session->getVar('coupon_code'.$i);
$url_apply_coupon = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=apply_coupon');

if ($applied_coupon_code)
 $show_coupon_code = "<br/>Coupon: " . $php5Session->getVar('coupon_code'.$i);
else
 $show_coupon_code = "
 <form action='$url_apply_coupon' method=post>
 <input type=text name=coupon_code size=10>
 <input type=hidden name=i value=$i  > 
 <input type='submit' value='Use Coupon Code'>
 </form>
 
 ";
 	
    $list .= "
	<tr>
	  <td>$sku</td>
	  <td width=100 height=100 align=center valign=middle><a class=tooltip rel=tooltip title='".$image2."' >$image</a></td>
	  <td>$name$addon_name </td>
	  <td align=right width=90>". price_tag($rate)."</td>
	  <td width=40></td>
	  <td>$qty</td>
	  <td  width=90 align=right>". price_tag($total_rate)."</td>  
	</tr>
	"; 	
	$total += $total_rate;
 }
    $sub_total = $total;
    $gst = $product->gst($total);

	$delivery_time = new Delivery_time();
	$delivery_surchage = $delivery_time->get_delivery_fee($php5Session->getVar('delivery_time'));
	$total = $total + $gst + $delivery_surchage;
    $list .= "
	<tr>
	  <td style='border-top:1px solid #ccc; ;padding-top:10px;' colspan=6 >Sub Total</td>
	  <td style='border-top:1px solid #ccc; ;padding-top:10px;' align=right>". price_tag($sub_total)."</td>
	</tr>	
	<tr>
	  <td style='border-top:1px solid #ccc; ;padding-top:10px;' colspan=6 >Delivery Surchage</td>
	  <td style='border-top:1px solid #ccc; ;padding-top:10px;' align=right>". price_tag($delivery_surchage)."</td>
	</tr>
	<tr>
	  <td style='border-top:1px solid #ccc; border-bottom:1px solid #ccc; padding-bottom:10px; padding-top:10px;'colspan=6 >Total ( w/ GST) :</td>
	  <td style='border-top:1px solid #ccc; border-bottom:1px solid #ccc; padding-bottom:10px; padding-top:10px;' align=right >". price_tag($total)."</td>
	</tr>
	"; 


		
$list .="</table></div>";

$smarty->assign('list', $list);
?>