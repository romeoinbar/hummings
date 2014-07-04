<?php 
include "$php5RootPath/languages/en/eshop/header_item/top_menu.php" ;
include_once "$php5RootPath/classes/cart.class.php" ;
?>
<?php
$product_count = $php5Session->getVar('counter') - 1;
$cart_total = ($php5Session->getVar('cart_total'))?price_tag(number_format($php5Session->getVar('cart_total'),2)):'' ;
$cart = new Cart();

$top_menu = "";
$url_my_account = sefBuild($php5WebPath, 'index.php?o=eshop&m=my_account&t=outsite', 1);
$url_order_tracking = sefBuild($php5WebPath, 'index.php?o=order_status', 1);
$url_customer_service = "";
$url_sign_in = sefBuild($php5WebPath, 'index.php?o=eshop&m=register&t=outsite', 1);
if ($product_count<0) $product_count = 0;
{
 $url = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=show', 1);	
 $top_menu .= "<div style='margin-top:12px; margin-right:0px; float:right;  font-weight:bold; color:#76214f;'><a href='$url' style='color:#76214f;'>My Cart : $product_count item(s) $cart_total </a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href='".$url_order_tracking."' style='color:#76214f;'>Track Your Order</a></div><div style='clear:both;'></div>";
}

/*$top_menu .= "
<div class=topmenu style='float:right;'>
 <a href='$url_my_account' class=topmenu>$lang_my_account</a> | 
 <a href='$url_order_tracking'  class=topmenu>$lang_order_tracking</a> | 
 <a href='$url_customer_service'  class=topmenu>$lang_customer_service</a> | 
 <a href=$url_sign_in''  class=topmenu>$lang_sign_in</a>     
</div>";*/

$smarty->assign('url_my_account', $url_my_account);

$smarty->assign('top_menu', $top_menu);

?>

