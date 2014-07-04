<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class NewsletterUserGroup extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $name           = null;
    /** @var string */
	var $list_id           = null;
    /** @var string */
	var $list_uncheck_id           = null;	
    /** @var string */
	var $list_email           = null;
    /** @var string */
	var $status        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__newsletter_user_group', array('id'), $dbh );
	}
}
