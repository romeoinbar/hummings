<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Campaign_Product extends php5DBTable {
	/** @var int Primary key */
	var $id         			= null;
	var $campaign_id    		= null;
  	var $product_id 	        = null;
	var $discount				= null;	

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__campaign_product', array('id'), $dbh );
	}
}