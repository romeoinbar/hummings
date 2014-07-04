<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=checkout&m=main', 1));
include_once $php5RootPath.'/includes/select_input.php';
$applied_coupon_code = $php5Session->getVar('coupon_code');

$url_apply_coupon = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&t=outsite&task=apply_coupon');

if ($applied_coupon_code)
 $show_coupon_code = "<br/>Coupon: " . $php5Session->getVar('coupon_code');
else
 $show_coupon_code = "
 <form action='$url_apply_coupon' method=post>
  <p style=\"color:#000; font-size:11px; margin-bottom:5px; margin-top:5px;\">If you have a discount code or gif voucher code, enter here and click Update</p> 
 <table width='100%'>
   <tr>
	 <td>
	 <input type=text name=coupon_code style='width:100%'>
	 </td>
	 <td width='80' align='right'>
	 <input type='image' src='{$php5WebPath}/images/update.jpg' style='border:none;' ></td>
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
$items = array();	
$j=0;
$k=0;
$addon = array();
for ($i=1; $i<$max; $i++)
 if (   $cart->unique_item( $i,$php5Session->getVar('pid'.$i) ) ) {
	$pid = $php5Session->getVar('pid'.$i);  
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i) );
	$qty = $php5Session->getVar('qty'.$i); 
	$qty = $cart->get_qty($php5Session->getVar('pid'.$i) ); 
	
	$sku = $product->sku;
	$qty_input = gen_select2(add_prefix('number'), 'id' , 'qty' , 'id', 'id' , $qty , '', "onChange=document.getElementById('$sku').submit();", 0);	
	$name = $product->name;
	$image = $product->image(50,50,$product->image);
	$image2 = $product->image(200,200,$product->image);	

	$r =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $i );

	$rate = $r['product_n_addon'];
	$product_rate =  $r['product_rate'];
	$discounted += $r['discounted'];
	$product_total = $product_rate * $qty;
    $total_rate = $qty * $rate;
	
	$remove_btn = $cart->remove_btn1($php5Session->getVar('pid'.$i));
	
	$recipient = $cart->show_select_recipients($php5Session->getVar('pid'.$i) );
	$options = $cart->show_options($i);	

	$addon_line = "";
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$i); $a++){
		  $remove_btna = $cart->remove_btn_add1($pid, $a );	
		  $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i . "_" . $a));			  
		  $addon_image = $addon_product->image(30,30,$addon_product->image);
		  $addon_thumb = "<a href='' rel=tooltip title='$addon_image' >" . $addon_product->image(50,50,$addon_product->image). "</a>";
		  $addon_name = "<b>Add on : ".$addon_product->name . "</b>";
		  $addon_price = price_tag(  $addon_product->price );
		  $addon_total = price_tag( $addon_product->price * $qty) ;
		  $addon[$k]->name = $addon_name;
		  $addon[$k]->image = $addon_image;
		  $addon[$k]->price = $addon_price;
		  $addon[$k]->qty = $qty;	
		  $addon[$k]->remove_button = $remove_btna;
	}
	$items[$j]->addon = $addon;	
	$url_detail = sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&t=outsite&task=show&id=' . $product->product_id , 1);
	$items[$j]->recipient = $recipient;
	$items[$j]->options = $options;
 	$items[$j]->name = $name;
	$items[$j]->sku = $sku;
	$items[$j]->image = $image;
	$items[$j]->url_detail = $url_detail;
	$items[$j]->form = "<form action='$url_cart_qty_change' id='$sku' method=post>
						  $qty_input 
						 ".$remove_btn."
						  <input type=hidden name=i value=$i  >
						  <input type=hidden name=pid value=$pid  >
					  </form>
					  
					  ";
	$items[$j]->price = price_tag($product_rate);	
  
	$total += $total_rate;
	$j++;
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
 
$smarty->assign('items', $items);

$smarty->assign('canCheckout', ($php5Session->getVar('counter')<2)?0:1);
$smarty->assign('is_login', ($php5Session->getVar('user_id')>0)?1:0);
$smarty->assign('max', $php5Session->getVar('counter'));

$smarty->assign('subbtotal', price_tag($subbtotal));
$smarty->assign('discounted', (price_tag($discounted)=="")?'S$ 0.00':price_tag($discounted));
$smarty->assign('delivery_fee', price_tag($delivery_fee));
$smarty->assign('gst', price_tag($gst));
$smarty->assign('total', price_tag($total));

$smarty->assign('show_coupon_code', $show_coupon_code);
$smarty->assign('url_recipient', sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient&task=main' , 1));
$smarty->assign('url_register', sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1));
$smarty->assign('err_msg',$php5Session->getVar('msg'));

$php5Session->setVar('gst', price_tag($gst));
$php5Session->setVar('ship', price_tag($delivery_fee));
$php5Session->setVar('subbtotal', price_tag($subbtotal));

$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'cart/list.tpl');
?>