<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Menus extends php5DBTable {
	/** @var int Primary key */
	var $menu_id             = null;
	var $parent_id           = null;
	var $itemid			= null;
	var $type           = null;
  	var $title           = null;
	var $link           = null;
	var $columns           = null;
	var $sorting           = null;
	var $publish        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__menu', array('menu_id'), $dbh );
	}
}