<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class NewsletterUser extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $name           = null;
    /** @var string */
	var $email           = null;
    /** @var string */
	var $date        = null;
    /** @var string */
	var $type        = null;	
    /** @var string */
	var $status        = null;
    /** @var string */
	var $generate_code        = null;		
		
	function __construct( &$dbh ) {
		$this->php5DBTable( '#__newsletter_user', array('id'), $dbh );
	}
}
