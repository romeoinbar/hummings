<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include_once 'classes/cart.class.php';
/*
if (!$php5Session->getVar('user_id')) {	
	$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=checkout&m=delivery' , 1));
	$redirect_path = sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1);
	php5Redirect($redirect_path);
} 
isCheckout(sefBuild($php5WebPath, 'index.php?o=checkout&m=main' , 1));*/
$d=1;
$r = 0;
prepare_input($d);
$smarty->assign('i', $d); 

include 'modules/checkout/load_delivery_date.php';
include 'templates/en/eshop/cart/load_shipping_address.php';	
include 'templates/en/eshop/cart/load_message.php';

$smarty->assign('billing_address_url', sefBuild($php5WebPath, 'index.php?o=checkout&m=shipping_address' , 1) );

$tpl = sprintf($php5TemplateFile, $language, 'mobile', 'cart/delivery.tpl');
$smarty->assign('main', $smarty->fetch($tpl) );
function prepare_input($d)
{
  global $php5DB_en;
  global $smarty;

	     $s = "<select id=s1 onChange=select_message(this.value,$d) style='width:300px;' ><option value=0>Select a category</option>";
         $query = "SELECT * FROM #__message WHERE parent_id=0 ORDER BY sorting";
         $php5DB_en->setQuery( $query );
         if ($rows = $php5DB_en->loadAssocList())
         {
	        foreach ($rows as $row)
			{
			  $s.= "<option value=".$row['message_id'].">".$row['message']."</option>";
			}
		 }
		 $s .= "</select>";
		 $smarty->assign('select_message', $s);
}
?>