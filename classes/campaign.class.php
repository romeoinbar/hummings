<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Campaign extends php5DBTable {
	/** @var int Primary key */
	var $campaign_id    			= null;
  	var $campaign_name 	         	= null;
	var $subject					= null;
	var $content         			= null;
	var $started_date       		= null;
	var $finished_date         		= null;
	var $posted_date       			= null;
	var $publish         			= null;
	

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__campaigns', array('campaign_id'), $dbh );
	}
}
