<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

class php5User extends php5DBTable{
	/** @var int Primary key */
	var $id                 = null;
    /** @var string */
	var $username              = null;  
    /** @var string */
	var $name              = null;   
	/** @var varchar */
	var $phone        = null;
	/** @var int */
	var $country_id			= null;
	/** @var int */
	var $email				= null;
	/** @var varchar */
	var $password          = null;
	/** @var varchar */
	var $show_pass         = null;	
	/** @var object */
	var $image			= null;
	/** @var string */
	var $remarks			= null;
	/** @var tinyint */
	var $type_id			= null;
	/** @var tinyint */
	var $status				= null;
	/** @var tinyint */	
	var $is_image			= null;
	/** @var tinyint */	
	var $is_new			= null;
	/** @var tinyint */	
	var $is_login			= null;
	
	function php5User( &$php5DB ) {
		$this->php5DBTable( '#__users', array('id'), $php5DB );
	}
}