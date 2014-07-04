<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class php5OrderPayment extends php5DBTable {
	/** @var int Primary key */
	var $order_payment_id             = null;
    /** @var string */
	var $amount           = null;
    /** @var string */
	var $payment_type           = null;
    /** @var string */
	var $payment_terms        = null;
    /** @var string */
	var $credit_card_type        = null;
    /** @var string */
	var $name_on_card        = null;
    /** @var string */
	var $credit_card_no        = null;
    /** @var string */
	var $expiry_date        = null;
    /** @var string */
	var $cvv        = null;
    /** @var string */
	var $approval_code        = null;
    /** @var string */
	var $spcode        = null;
    /** @var string */
	var $ssid        = null;
    /** @var string */
	var $order_id        = null;   

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__order_payment', array('order_payment_id '), $dbh );
	}
}
