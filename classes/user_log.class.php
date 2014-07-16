<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class UserLog extends php5DBTable {
	/** @var int Primary key */
	var $id    			= null;
  	var $user_id 	         	= null;
	var $status					= null;
	var $times					= null;
	var $update_indicator					= null;
	var $error_content					= null;
	
	function __construct( &$dbh ) {
		$this->php5DBTable( '#__user_log', array('id'), $dbh );
	}
}
