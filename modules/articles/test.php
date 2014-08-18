<?
error_reporting(1);

include $php5RootPath. '/templates/en/eshop/cart/generate_order1.php';	
echo 'abc';
if (have_product_type_in_cart(1)){
  $order = generate_order(1);	
  echo '1';		
 }
 if (have_product_type_in_cart(2)){
  $order = generate_order(2);	
  echo '2';			
 }
if (have_product_type_in_cart(4)){
 $order = generate_order(4);		
echo '4';		
}
if (have_product_type_in_cart(5)){
 $order = generate_order(5);	
 echo '5';			
}
exit;
?>