<?php
class NewsletterEmailCron extends php5DBTable
{
	/***************/
	var $id 			= null;
	/***************/
	var $email 		= null;
	/***************/
	var $title 		= null;
	/***************/
	var $body 		= null;	
	/***************/
	var $html 		= null;
	/***************/
	var $type 		= null;						
	/***************/
	var $date_create 	= null;
	/***************/
	var $mailid 	= null;
	/***************/
	var $date_update 	= null;
	/***************/
	var $status 	= null;
	var $historyid= null;
	var $generate_code= null;
	
	var $count_sent= null;

	function NewsletterEmailCron( &$php5DB ) {
		$this->php5DBTable( '#__newsletter_email_cron', array('id'), $php5DB );
	}
}
?>