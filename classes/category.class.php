<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Category extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $name           = null;
    /** @var string */
	var $type           = null;
    /** @var string */
	var $publish        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__category', array('id'), $dbh );
	}
}