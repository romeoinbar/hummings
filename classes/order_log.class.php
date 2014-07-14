<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class OrderLog extends php5DBTable {
	/** @var int Primary key */
	var $id    			= null;
  	var $order_id 	         	= null;
	var $status					= null;
	var $times					= null;
	
	function __construct( &$dbh ) {
		$this->php5DBTable( '#__order_log', array('id'), $dbh );
	}
}
