<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

if (!$php5Session->getVar('counter')) {		
	php5Redirect(sefBuild($php5WebPath, 'index.php?o=checkout&m=main' , 1));
} 


include_once 'includes/select_input.php';
include_once 'classes/cart.class.php';
include_once 'classes/tables.class.php';
include_once 'classes/images.class.php';

$url_shipping = sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient' , 1);	
$url_delivery = sefBuild($php5WebPath, 'index.php?o=checkout&m=recipient2' , 1);	
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

///////////////////////////////////////////////////////

$smarty->assign('title', gen_select(add_prefix('title'), 'title', "title" . $d, 'title', 'title', ' ') );	

include 'modules/eshop/load_shipping_address.php';

$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'cart/recipient.tpl');
$smarty->assign('main', $smarty->fetch($tpl) );
?>