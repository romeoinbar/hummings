<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class Ratings extends php5DBTable {
	/** @var int Primary key */
	var $rating_id             = null;
    /** @var string */
	var $product_id           = null;
    /** @var string */
	var $rates           = null;
    /** @var string */
	var $rating        = null;
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

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__cart_ratings', array('product_id'), $dbh );
	}
	
	function updateRating( $php5DB ) {
		$where = array();
		$where[] = " `rv`.product_id = '" . mysql_escape_string($this->product_id) . "' ";
		//list ratings
		$query = "SELECT `rv`.*,`pr`.`rating_review_id`, `p`.`name` FROM `#__cart_rating_reviews` AS `pr`
			LEFT JOIN `#__cart_rating_votes` as `rv` on `rv`.`product_id`=`pr`.`product_id`  and `rv`.`created_by`= `pr`.`created_by` "
		. "\n LEFT JOIN `#__user` AS `u`	ON `pr`.`created_by` = `u`.`user_id`"	
		.	"\n	LEFT JOIN `#__product` as `p` on `rv`.`product_id`=`p`.`product_id`  "
		. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
		;
		//. "\n LIMIT $startLimit, $limit";
		$php5DB->setQuery( $query );//echo $query;
		$rows = $php5DB->loadObjectList();
		if(count($rows)>0) {
			$rates = 0;
			$ratingcount = 0;
			$rating = 0;
			foreach($rows as $row) {
				$rates += $row->vote;
				$ratingcount++;
			}
			$rating = floor($rates/$ratingcount);
			$this->rates = $rates;
			$this->ratingcount = $ratingcount;
			$this->rating = $rating;
			$this->store();
		}
	}
}
