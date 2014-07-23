<?php
/***************************************************************************
*                                customers.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
define('PHP5_PHP', true);
$path = dirname(__FILE__);
include("$path/../configs/extension.inc");
include("$path/../configs/config".$php5Ext);

if(!is_file($php5RootPath . "/includes/php5_common" . $php5Ext)){
    echo "To check the config file.";
    die();
}
$language = 'en';

require_once($php5RootPath . "/includes/php5_define" . $php5Ext);
require_once($php5RootPath . "/includes/class.inputfilter" . $php5Ext);
require_once($php5RootPath . "/includes/php5_common" . $php5Ext);
php5Init( 0 );

require_once($php5RootPath . "/classes/newsletter_email_cron.class.php");

$where = array();
$rows_user = array();
$where[] = " type = 1 ";
$where[] = " status = 0  ";
////////////////
$query = "SELECT * "
. "\n FROM #__newsletter_email_cron "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n LIMIT 40 ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();

if(is_array($rows_user) && count($rows_user) >0) {
	include $php5RootPath . '/includes/send_email.php';
	foreach($rows_user as $row) {
		$row_cron = new NewsletterEmailCron($php5DB);
		$row_cron->load($row->id);		
		if ($row_cron->status==0) {
			$row_cron->status = 2;
			$row_cron->count_sent = ++$row_cron->count_sent;
			$row_cron->store();
			//send_email_newsletter($row->email, $row->title, $row->body, $row->html, $row->mailid);
			php5Mail(php5GetConfig('config_email'), "Humming", $row->email,$row->title, $row->body, 0, '');				
		}
	}
}

//sleep(300);
echo "Done<br >\n";
