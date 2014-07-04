<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

class Member extends php5DBTable{
	/** @var int Primary key */
	var $user_id                 = null;
	
	function Member( &$php5DB ) {
		$this->php5DBTable( '#__user', array('user_id'), $php5DB );
	}
}
