<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Content extends php5DBTable {
	/** @var int Primary key */
	var $content_id    			= null;
  	var $category_id         	= null;
	var $title         			= null;
	var $image       			= null;
	var $introtext         		= null;
	var $fulltext       		= null;
	var $created_by         	= null;
	var $created_date       	= null;
	var $modified_by         	= null;
	var $modified_date       	= null;
	var $sorting         		= null;
	var $hits       			= null;
	var $publish         		= null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__content', array('content_id'), $dbh );
	}
}
