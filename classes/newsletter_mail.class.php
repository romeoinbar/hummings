<?php

defined('PHP5_PHP') or die("Application is stopping!!!");

class NewsletterMail extends php5DBTable {
	/** @var int Primary key */
	var $mailid             = null;
    /** @var string */
	var $subject           = null;
    /** @var string */
	var $body           = null;
    /** @var string */
	var $altbody        = null;
    /** @var string */
	var $published        = null;
    /** @var string */
	var $senddate        = null;
    /** @var string */
	var $created        = null;
    /** @var string */
	var $fromname        = null;
    /** @var string */
	var $fromemail        = null;
    /** @var string */
	var $replyname        = null;
    /** @var string */
	var $replyemail        = null;
    /** @var string */
	var $type        = null;
    /** @var string */
	var $visible        = null;
    /** @var string */
	var $userid        = null;
    /** @var string */
	var $alias        = null;
    /** @var string */
	var $attach        = null;
    /** @var string */
	var $html        = null;
    /** @var string */
	var $tempid        = null;
    /** @var string */
	var $key        = null;
    /** @var string */
	var $frequency        = null;
    /** @var string */
	var $params        = null;
    /** @var string */
	var $sentby        = null;
    /** @var string */
	var $metakey        = null;
    /** @var string */
	var $metadesc        = null;
    /** @var string */
	var $filter        = null;
    /** @var string */
	var $list_group       = null;
	
	function __construct( &$dbh ) {
		$this->php5DBTable( '#__newsletter_mail', array('mailid'), $dbh );
	}
}
