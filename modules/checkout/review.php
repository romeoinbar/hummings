<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
/*
$redirect_path = sefBuild($php5WebPath, 'index.php?o=checkout&m=main' , 1);
if (!$php5Session->getVar('user_id')) {	
	$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient' , 1));
	$redirect_path = sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1);
	php5Redirect($redirect_path);
} 
isCheckout($redirect_path);
*/

include_once 'includes/select_input.php';
include_once 'classes/cart.class.php';
include_once 'classes/tables.class.php';
include_once 'classes/images.class.php';
$coupon = new Coupon();
//include ($php5RootPath.'/modules/checkout/cart.php');

$url_shipping = sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient' , 1);	
$url_delivery = sefBuild($php5WebPath, 'index.php?o=checkout&m=delivery' , 1);	
$smarty->assign('url_delivery', $url_delivery );	

///////////////////////////////////////////////////////
$d = 1;
$smarty->assign('i', $d); 
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
$item_price = 0;
$delivery_fee = 0;
for ($i=1; $i<$max; $i++)
 if (   $cart->unique_item( $i,$php5Session->getVar('pid'.$i) ) ) {
	$pid = $php5Session->getVar('pid'.$i);  
    $product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('pid'.$i) );
	$qty = $php5Session->getVar('qty'.$i); 
	$qty = $cart->get_qty($php5Session->getVar('pid'.$i) ); 
		
	$sku = $product->sku;
	$name = $product->name;
	$image = $product->image(70,70,$product->image);
	$image2 = $product->image(200,200,$product->image);	
	
	

	$r =  $cart->cart_get_rate($product,$addon_product, $php5Session->getVar('coupon_code'), $i );

	$rate = $r['product_n_addon'];
	$product_rate =  $r['product_rate'];
	$discounted += $r['discounted'];
	
	$total_rate = $qty * $rate;
	$item_price  += $total_rate;
	
	$product_total = $product_rate * $qty;	

	
	$recipient = $cart->show_select_recipients($php5Session->getVar('pid'.$i) );
	$options = $cart->show_options($i);

	$addon_line = "";
    for ($a=1; $a<= $php5Session->getVar('total_addon'.$i); $a++){
		  $remove_btna = $cart->remove_btn_add($pid, $a );	
		  $addon_product->loadData(add_prefix('product') , 'product_id', $php5Session->getVar('addon'.$i . "_" . $a));			  
		  $addon_image = $addon_product->image(70,70,$addon_product->image);
		  $addon_thumb = "<a href='' rel=tooltip title='$addon_image' >" . $addon_product->image(70,70,$addon_product->image). "</a>";
		  $addon_name = "<b>Add on : ".$addon_product->name . "</b>";
		  $addon_price = price_tag(  $addon_product->price );
		  $addon_total = price_tag( $addon_product->price * $qty) ;
		  $addon[$k]->name = $addon_name;
		  $addon[$k]->image = $addon_image;
		  $addon[$k]->price = $addon_price;
		  $addon[$k]->qty = $qty;		
		  $item_price  += $addon_total; 
	}
	$items[$j]->addon = $addon;
	$url_detail = sefBuild($php5WebPath, 'index.php?o=eshop&m=product_detail&t=outsite&task=show&id=' . $product->product_id , 1);
 	$items[$j]->name = $name;
	$items[$j]->sku = $sku;
	$items[$j]->image = $image;
	$items[$j]->url_detail = $url_detail;
	$items[$j]->form = $qty;
	$items[$j]->price = price_tag($product_rate); 
	
	$j++;
 }

 
$smarty->assign('items', $items);

$subbtotal = $total;
$total_recipient = $cart->get_total_recipient();
$config = new Configuration();

$delivery_fee = $total_recipient*$config->get_value('config_delivery_charge') ;

///////////////////////////////////////////////////////
		
///////////////////////////////////////////////////////
include 'modules/checkout/load_delivery_date.php';
include 'modules/eshop/load_shipping_address.php';
include 'templates/en/eshop/cart/load_billing_address1.php';	



$applied_coupon_code = $php5Session->getVar('coupon_code');
$coupon->loadData( add_prefix('coupon'), 'coupon_code' , $applied_coupon_code );
if ($coupon->free_delivery) {
	$delivery_surcharge = 0;	
	$delivery_fee = 0;	
}

$gst = $product->gst($item_price +$delivery_fee );
$total = $item_price + $gst + $delivery_fee;
$php5Session->setVar('cart_total', $total); 

$smarty->assign('subbtotal', price_tag($subbtotal));
$smarty->assign('discounted', (price_tag($discounted)=="")?'S$ 0.00':price_tag($discounted));
$smarty->assign('delivery_fee', price_tag($delivery_fee));
$smarty->assign('gst', price_tag($gst));
$smarty->assign('total', price_tag($total));


$c1 = $php5Session->getVar('call_before_delivery'.$d);
$c2 = $php5Session->getVar('avoid_lunch'.$d);
$call_before_delivery = ($c1 == '1') ? "Call before delivery":"";
$avoid_lunch = ($c2 == '1') ? "Avoid lunch":"";

 
if ($c1 == 1)
$avoid_lunch = ", " . $avoid_lunch;

$smarty->assign('call_before_delivery', $call_before_delivery); 
$smarty->assign('avoid_lunch', $avoid_lunch); 
$delivery_time = new Delivery_time();
$delivery_time->loadData( add_prefix('delivery_time'), 'delivery_time_id',$php5Session->getVar('delivery_time'.$d  ) );
$dtime = $delivery_time->caption;

$smarty->assign('dtime', $dtime); 



$ip = getRealIpAddr();	
$smarty->assign('ip', $ip);	   

$smarty->assign('item_price', price_tag($item_price));	

$php5Session->setVar('gst', price_tag($gst));
$php5Session->setVar('ship', price_tag($delivery_fee));
$php5Session->setVar('subbtotal', price_tag($item_price));
$php5Session->setVar('total', price_tag($total));

$url_confirm = sefBuild($php5WebPathS, 'index.php?o=checkout&m=confirm' , 1);
$url_confirm3 = sefBuild($php5WebPathS, 'index.php?o=checkout&m=confirm3' , 1);
$smarty->assign('url_confirm',  $url_confirm  );
$smarty->assign('url_confirm3',  $url_confirm  );
$url_success = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=success' , 1);
$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'cart/review.tpl');
$smarty->assign('main', $smarty->fetch($tpl) );
function getRealIpAddr()
{
    if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
    {
      $ip=$_SERVER['HTTP_CLIENT_IP'];
    }
    elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
    {
      $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    }
    else
    {
      $ip=$_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}
?>