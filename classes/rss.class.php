<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class RSS extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $title           = null;
    /** @var string */
	var $category_id     = null;
    /** @var string */
	var $description     = null;
    /** @var string */
	var $link        = null;
    /** @var string */
	var $date        = null;
    /** @var string */
	var $s_date        = null;
    /** @var string */
	var $status        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__rss', array('id'), $dbh );
	}
}