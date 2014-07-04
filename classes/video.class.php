<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class VideoBlog extends php5DBTable {
	/** @var int Primary key */
	var $video_id             = null;
	var $type           	  = null;
	var $embed           = null;
	var $video_path          	  = null;
	var $desc		  = null;	
	var $created_date				  = null;	
	var $sorting              = null;
	var $publish              = null;

	function __construct( &$dbh ) {
		$this->php5DBTable( '#__videos', array('video_id'), $dbh );
	}
}
