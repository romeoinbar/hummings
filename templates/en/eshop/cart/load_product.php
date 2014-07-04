<?php



 $max = $php5Session->getVar('counter');	
 for ($i=1; $i<$max; $i++)
 {
	 $selected_recipient =  $php5Session->getVar('selected_recipient'.$i);
	 if ($selected_recipient == $r)
	 {
		$product = new Product();
		$product->loadData(add_prefix('product'), 'product_id', $php5Session->getVar('pid'.$i) ); 
		echo $product->name;
	 }
 }


  $smarty->assign('obj', $user );
?>