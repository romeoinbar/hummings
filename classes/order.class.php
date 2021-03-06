<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class php5Order extends php5DBTable {
	/** @var int Primary key */
	var $order_id             = null;
    /** @var string */
	var $order_date           = null;
    /** @var string */
	var $sales_doc_type           = null;
    /** @var string */
	var $sales_order_number        = null;
    /** @var string */
	var $sales_organization        = null;
    /** @var string */
	var $distribution_channel        = null;
    /** @var string */
	var $division        = null;
    /** @var string */
	var $account_group        = null;
    /** @var string */
	var $user_id        = null;
    /** @var string */
	var $sold_to_party_no        = null;
    /** @var string */
	var $title        = null;
    /** @var string */
	var $name        = null;
    /** @var string */
	var $block        = null;
    /** @var string */
	var $unit        = null;
    /** @var string */
	var $building        = null;
    /** @var string */
	var $address1        = null;
    /** @var string */
	var $address2        = null;
    /** @var string */
	var $address3        = null;
    /** @var string */
	var $address4        = null;
    /** @var string */
	var $postcode        = null;
    /** @var string */
	var $city        = null;
    /** @var string */
	var $country        = null;
    /** @var string */
	var $telephone1        = null;
    /** @var string */
	var $telephone2        = null;
    /** @var string */
	var $customer_group        = null;
    /** @var string */
	var $payment_id        = null;
    /** @var string */
	var $tax_code        = null;
    /** @var string */
	var $contact_person_code        = null;
    /** @var string */
	var $contact_person_name        = null;
    /** @var string */
	var $gender        = null;
    /** @var string */
	var $contact_telephone1        = null;
    /** @var string */
	var $contact_telephone2        = null;
    /** @var string */
	var $email        = null;
    /** @var string */
	var $order_source        = null;
    /** @var string */
	var $spcode        = null;
    /** @var string */
	var $ssid        = null;
    /** @var string */
	var $project_id        = null;
    /** @var string */
	var $created_by        = null;
    /** @var string */
	var $approved_by        = null;
    /** @var string */
	var $reference_no        = null;
    /** @var string */
	var $update_addres_indicator        = null;
    /** @var string */
	var $product_id        = null;
    /** @var string */
	var $sku        = null;
    /** @var string */
	var $qty        = null;
    /** @var string */
	var $occasion        = null;
    /** @var string */
	var $free_of_charge_indicator        = null;
    /** @var string */
	var $condtype1        = null;
    /** @var string */
	var $unit_price        = null;
    /** @var string */
	var $condtype2        = null;
    /** @var string */
	var $discount        = null;
    /** @var string */
	var $evoucher        = null;
    /** @var string */
	var $evoucher_value        = null;
    /** @var string */
	var $other_surcharge_type        = null;
    /** @var string */
	var $other_surcharge_amount        = null;
    /** @var string */
	var $sp_indicator        = null;
    /** @var string */
	var $redemption_promo_id        = null;
    /** @var string */
	var $loyalty_points        = null;
    /** @var string */
	var $addon_product_id        = null;
    /** @var string */
	var $addon_sku        = null;
    /** @var string */
	var $addon_qty        = null;
    /** @var string */
	var $addon_product        = null;
    /** @var string */
	var $shipto__party_no        = null;
    /** @var string */
	var $shipto_title        = null;
    /** @var string */
	var $shipto_name        = null;
    /** @var string */
	var $shipto_company        = null;
    /** @var string */
	var $shipto_block        = null;
    /** @var string */
	var $shipto_unit        = null;
    /** @var string */
	var $shipto_bulding        = null;
    /** @var string */
	var $shipto_address1        = null;
    /** @var string */
	var $shipto_address2        = null;
    /** @var string */
	var $shipto_address3        = null;
    /** @var string */
	var $shipto_postcode        = null;
    /** @var string */
	var $shipto_country        = null;
    /** @var string */
	var $shipto_telephone1        = null;
    /** @var string */
	var $shipto_telephone2        = null;
    /** @var string */
	var $shipto_email        = null;
    /** @var string */
	var $shipto_gender        = null;
    /** @var string */
	var $delivery_id        = null;
    /** @var string */
	var $payment_status        = null;
    /** @var string */
	var $delivery_status        = null;
    /** @var string */
	var $order_status        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__order', array('order_id'), $dbh );
	}
}