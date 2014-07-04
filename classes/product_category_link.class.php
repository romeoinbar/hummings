<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class ProductCategoryLink extends php5DBTable {
	/** @var int Primary key */
	var $product_category_link_id             = null;
    /** @var string */
	var $product_id           = null;
    /** @var string */
	var $product_category_id           = null;
    /** @var string */
	var $sorting        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__product_category_link', array('product_category_link_id'), $dbh );
	}
}