<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
/*$redirect_path = sefBuild($php5WebPath, 'index.php?o=checkout&m=main' , 1);
if (!$php5Session->getVar('user_id')) {	
	$php5Session->setVar('url_redirect', sefBuild($php5WebPath, 'index.php?o=checkout&m=review' , 1));
	$redirect_path = sefBuild($php5WebPath, 'index.php?o=eshop&m=register' , 1);
	php5Redirect($redirect_path);
} 
isCheckout($redirect_path);*/
include_once 'classes/cart.class.php';

$payment_type = php5GetParam($_REQUEST, "payment_type", 'paypal');	

if ($payment_type=='paypal'){
	include $php5RootPath. '/templates/en/eshop/cart/generate_order1.php';
	header('Location: ' .  sefBuild($php5WebPath, 'index.php?o=mobile_payment&m=main1', 1) );	
} else {  
   $url_success = sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=success' , 1);		
   include $php5RootPath. '/templates/en/eshop/cart/generate_order.php'; 
   header('Location: ' .  $url_success );	
}
function getRealIpAddr() {
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