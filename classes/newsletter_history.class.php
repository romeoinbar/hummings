<?php
class NewsletterHistory extends php5DBTable
{
	/***************/
	var $id 			= null;
	/***************/
	var $date 		= null;
	/***************/
	var $ip 	= null;
	/***************/
	var $action 	= null;
	/***************/
	var $data 	= null;
	/***************/
	var $source 	= null;
	/***************/
	var $mailid 		= null;

	function NewsletterHistory( &$php5DB ) {
		$this->php5DBTable( '#__newsletter_history', array('id'), $php5DB );
	}
}
?>