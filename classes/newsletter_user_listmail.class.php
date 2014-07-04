<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class NewsletterUserListmail extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $group_id           = null;
    /** @var string */
	var $mailid           = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__newsletter_user_listmail', array('id'), $dbh );
	}
}