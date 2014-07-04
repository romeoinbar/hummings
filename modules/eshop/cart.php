<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/

include_once 'classes/cart.class.php';
include_once 'classes/tables.class.php';
$cart = new Cart();

switch ($task)
{
 case 'add' : 	
	$qty = $_POST['qty'];
	 $pid = $_POST['product_id'];	 		     
	$cart->add_to_cart($pid, $qty);		
     break;	
 case 'remove' : 		
        $cart->remove_cart($id);
		$max = $php5Session->getVar('counter');	
		if ($max==1){
			$php5Session->setVar('coupon_code', 0);	
		}
        break;				
 case 'remove_addon' :
           $ids = explode('_', $id);
           $cart->remove_cart_add($ids[0], $ids[1]);
            break;					
}

if ($env=='PC')	
	header('Location: ' . sefBuild($php5WebPath, 'index.php?o=eshop&m=checkout&task=show&t=outsite', 1)  );  
else
	header('Location: ' . sefBuild($php5WebPath, 'index.php?o=checkout&m=main&task=add', 1)  );  
 
return;

