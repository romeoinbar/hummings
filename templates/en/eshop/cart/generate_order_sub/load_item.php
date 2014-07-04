<?php
	$order->product_id=$product->product_id	;    // item no
	$order->sku = $product->sku; /// material
	$order->qty = $qty;
	$order->occasion = $product->get_occasions() ;
	$order->free_of_charge_indicator = 0;
	$order->condtype1 = '';  /// PR00 ?
	$order->unit_price = $rate;                              ///////////// total price?
	$order->condtype2 = '';  /// ZD01, ZD02 how to indentify?
	$order->discount = 0;   //////////////       how to indentify?   
	$order->evoucher = "";									
	$order->evoucher_value = "";
	$order->other_surcharge_type = "";   //////////////       how to indentify?   
	$order->other_surcharge_amount  = "";   //////////////       how to indentify?   
	$order->sp_indicator =   ( $addon_product->product_id ) ? 1 : 0;
	$order->redemption_promo_id = 0;  
	$order->loyalty_points = 0;
	
	if ( $addon_product->product_id)
	{
  	  $order->addon_product_id = $addon_product->product_id ;
	  $order->addon_sku = $addon_product->sku ;
	  $order->addon_qty = $qty;
	  $order->addon_product = 1;
	}
	else
	{
  	  $order->addon_product_id = 0;
	  $order->addon_sku = 0 ;
	  $order->addon_qty =0;
	  $order->addon_product = 0;	
	}  
?>