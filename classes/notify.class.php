<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Notify extends php5DBTable {
	/** @var int Primary key */
	var $notify_id    = null;
	var $user_id          = null;
  	var $product_id          = null;
	var $email         		= null;
	
	function __construct( &$dbh ) {
		$this->php5DBTable( '#__notify_quantity', array('notify_id'), $dbh );
	}
}
