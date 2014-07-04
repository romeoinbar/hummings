<?php
defined('PHP5_PHP') or die("Application is stopping!!!");

class OrderDelivery extends php5DBTable{
	/** @var int Primary key */
	var $order_delivery_id                 = null;
    /** @var string */
	var $delivery_line              = null;  
    /** @var string */
	var $user_id              = null;   
	/** @var varchar */
	var $from_date        = null;
	/** @var int */
	var $to_date			= null;
	/** @var int */
	var $delivery_time				= null;
	/** @var varchar */
	var $delivery_time_id          = null;
	/** @var varchar */
	var $delivery_time_code         = null;	
	/** @var object */
	var $from_message			= null;
	/** @var string */
	var $language			= null;
	/** @var tinyint */
	var $to_message			= null;
	/** @var tinyint */
	var $message				= null;
	/** @var tinyint */	
	var $call_before_delivery			= null;
	/** @var tinyint */	
	var $avoid_lunch			= null;
	/** @var tinyint */	
	var $special_instruction			= null;
	var $surcharge			= null;
	var $delivery_status			= null;
	var $payment_status			= null;
	var $shipto_party_no			= null;
	var $shipto_title			= null;
	var $shipto_name			= null;
	var $shipto_company			= null;
	var $shipto_block			= null;
	var $shipto_unit			= null;
	var $shipto_building			= null;
	var $shipto_address1			= null;
	var $shipto_address2			= null;
	var $shipto_address3			= null;
	var $shipto_postcode			= null;
	var $shipto_country			= null;
	var $shipto_city			= null;
	var $shipto_state			= null;
	var $shipto_telephone1			= null;
	var $shipto_telephone2			= null;
	var $shipto_fax			= null;
	var $shipto_email			= null;
	var $shipto_gender			= null;
	var $order_id			= null;
	
	function php5User( &$php5DB ) {
		$this->php5DBTable( '#__order_delivery', array('order_delivery_id'), $php5DB );
	}
}