<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

$url_review = sefBuild($php5WebPath, 'index.php?o=checkout&m=review' , 1);
$smarty->assign('billing_address_url2', sefBuild($php5WebPath, 'index.php?o=checkout&m=billing_address2' , 1) );

include 'templates/en/eshop/cart/push_billing_address.php';
header( "Location: $url_review");

?>