<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class ClsProduct extends php5DBTable {
	/** @var int Primary key */
	var $product_id             = null;
    /** @var string */
	var $stock           = null;
    /** @var string */
	var $product_type           = null;
    /** @var string */
	var $sku        = null;
    /** @var string */
	var $name        = null;
    /** @var string */
	var $price        = null;
    /** @var string */
	var $description_short        = null;
    /** @var string */
	var $description        = null;
    /** @var string */
	var $image        = null;
    /** @var string */
	var $height        = null;
    /** @var string */
	var $width        = null;
    /** @var string */
	var $length        = null;
    /** @var string */
	var $weight        = null;
    /** @var string */
	var $publish        = null;
    /** @var string */
	var $lead_time        = null;
    /** @var string */
	var $date_added        = null;
    /** @var string */
	var $available_date        = null;
    /** @var string */
	var $availability        = null;
    /** @var string */
	var $sef_title        = null;
    /** @var string */
	var $sef_keyword        = null;
    /** @var string */
	var $sef_description        = null;
    /** @var string */
	var $project_id        = null;
    /** @var string */
	var $division        = null;
    /** @var string */
	var $order_type        = null;
    /** @var string */
	var $discount_value        = null;
    /** @var string */
	var $discount_type        = null;
    /** @var string */
	var $occasions        = null;	

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__product', array('product_id'), $dbh );
	}
}