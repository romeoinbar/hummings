<?
$message = prepare_order(5816,  sprintf($php5TemplateFile, $language, 'eshop', 'cart/order_mail.php'));
echo $message
/*include('includes/send_email.php');
$to = 'tuyetanh@ua-consultants.com';
$subject = 'test subject';
$message = 'body test';
send_email_all4($to, $subject, $message);

$query = "SELECT * FROM #__coupon WHERE  coupon_code='CNYFD'  AND  
             ( expiry_date='0000-00-00'  OR expiry_date > '". date("Y-m-d")."') ";
echo $query;

for ($i=1; $i<$max; $i++){
	$query = "SELECT product_category_id FROM #__product_category_link WHERE product_id =".$php5Session->getVar('pid'.$i);
	$php5DB_en->setQuery( $query );
	if (array_search($php5DB_en->loadResult(), explode(",", $coupon->apply_to_product))!==false){
		$f1= true;		
	}
}
exit;

function getTotalOrder($order_id){
	global $php5DB;
	$surcharge = 0;
	$subtotal = 0;
	$g_total = 0;
	$php5DB->setQuery("SELECT * FROM #__order_item WHERE order_id=".$order_id);
	$rows = $php5DB->loadObjectList();
	foreach ($rows as $row){
		$product = new Product();
		$product->loadData(add_prefix('product'), 'product_id', $row->product_id);
		
		$order_item = new Order_item();
		$order_item->loadData(add_prefix('order_item'), 'order_item_id', $row->order_item_id);			  
		
		$qty = $row->qty;
		$unit_price = $order_item->get_discounted_price();	
		$surcharge += $order_item->get_surcharge();				  	 
					 
		$total = $unit_price * $qty;	
		$subtotal +=  $total; 
	}
	$g_total = $subtotal + $product->gst($subtotal+$surcharge) + $surcharge;
	return $g_total;
}
echo getTotalOrder(5518);
*/
?>