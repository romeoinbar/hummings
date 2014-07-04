<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class ContentCategory extends php5DBTable {
	/** @var int Primary key */
	var $content_category_id    = null;
	var $category_type          = null;
  	var $category_name          = null;
	var $sorting         		= null;
	var $publish       			= null;
	var $show_bottom   			= null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__content_category', array('content_category_id'), $dbh );
	}
}
