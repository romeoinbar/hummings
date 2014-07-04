<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class ProductCategory extends php5DBTable {
	/** @var int Primary key */
	var $product_category_id             = null;
    /** @var string */
	var $category_type           = null;
    /** @var string */
	var $code           = null;
    /** @var string */
	var $parent_id        = null;
    /** @var string */
	var $name        = null;
    /** @var string */
	var $image        = null;
    /** @var string */
	var $description        = null;
    /** @var string */
	var $publish        = null;
    /** @var string */
	var $sorting        = null;
    /** @var string */
	var $columns        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__product_category', array('product_category_id'), $dbh );
	}
}