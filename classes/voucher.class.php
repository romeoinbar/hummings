<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Voucher extends php5DBTable {
	/** @var int Primary key */
	var $id             = null;
    /** @var string */
	var $code           = null;
    /** @var string */
	var $email           = null;
    /** @var string */
	var $date        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__voucher', array('id'), $dbh );
	}
}
