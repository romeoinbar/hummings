<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class OrderItem extends php5DBTable {
	/** @var int Primary key */
	var $order_item_id             = null;
    /** @var string */
	var $order_id           = null;
    /** @var string */
	var $product_id           = null;
    /** @var string */
	var $sku        = null;
    /** @var string */
	var $qty        = null;
    /** @var string */
	var $occasion        = null;
    /** @var string */
	var $free_of_charge_indicator        = null;
    /** @var string */
	var $condtype1        = null;
    /** @var string */
	var $unit_price        = null;
    /** @var string */
	var $condtype2        = null;
    /** @var string */
	var $discount        = null;
    /** @var string */
	var $evoucher        = null;
    /** @var string */
	var $evoucher_value        = null;
    /** @var string */
	var $other_surcharge_type        = null;
    /** @var string */
	var $other_surcharge_amount        = null;
    /** @var string */
	var $sp_indicator        = null;
    /** @var string */
	var $redemption_promo_id        = null;
    /** @var string */
	var $loyalty_points        = null;
    /** @var string */
	var $addon_product_id        = null;
    /** @var string */
	var $addon_sku        = null;
    /** @var string */
	var $addon_qty        = null;
    /** @var string */
	var $addon_product        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__order_item', array('order_item_id'), $dbh );
	}
}
