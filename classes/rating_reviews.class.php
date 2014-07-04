<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class RatingReviews extends php5DBTable {
	/** @var int Primary key */
	var $rating_review_id             = null;
    /** @var string */
	var $product_id           = null;
	 /** @var string */
	var $title           = null;
    /** @var string */
	var $comment           = null;
	 /** @var int */
	var $helpful           = null;
    /** @var int */
	var $report_abuse   = null;
    /** @var string */
	var $review_ok        = null;
    /** @var string */
	var $review_rates        = null;
    /** @var string */
	var $review_ratingcount        = null;
    /** @var string */
	var $review_rating        = null;
    /** @var string */
	var $review_editable        = null;
    /** @var string */
	var $lastip        = null;
    /** @var string */
	var $published        = null;
    /** @var string */
	var $created_on        = null;
    /** @var string */
	var $created_by        = null;
    /** @var string */
	var $modified_on        = null;
    /** @var string */
	var $modified_by        = null;
    /** @var string */
	var $locked_on        = null;
    /** @var string */
	var $locked_by        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__cart_rating_reviews', array('rating_review_id'), $dbh );
	}
}
