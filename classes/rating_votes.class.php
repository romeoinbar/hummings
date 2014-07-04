<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class RatingVotes extends php5DBTable {
	/** @var int Primary key */
	var $rating_vote_id             = null;
    /** @var string */
	var $product_id           = null;
    /** @var string */
	var $vote           = null;
    /** @var string */
	var $lastip        = null;
    /** @var string */
	var $created_on        = null;
    /** @var string */
	var $created_by        = null;
    /** @var string */
	var $modified_on        = null;
    /** @var string */
	var $modified_by        = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__cart_rating_votes', array('rating_vote_id'), $dbh );
	}
}
