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
require_once($php5RootPath . "/classes/newsletter_user.class.php");
//list user
$where = array();
$rows_user = array();
$where[] = " email != '' ";
$where[] = " user_id NOT IN (SELECT user_id FROM #__order )  ";
////////////////
$query = "SELECT user_id, email, name "
. "\n FROM #__user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY user_id ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();

foreach($rows_user as $row) {
	$query = "SELECT id "
	. "\n FROM #__newsletter_user "
	. "\n WHERE email = '".$row->email."'" 
	;
	
	$php5DB->setQuery( $query );
	$id = $php5DB->loadResult();
	$rowUser = new NewsletterUser($php5DB);
	if($id) {
		$rowUser->id = $id;	
	} else {
		$rowUser->id = 0;
	}
	$rowUser->type = 3;
	$rowUser->store();
}


//list user
$where = array();
$rows_user = array();
$where[] = " email != '' ";
$where[] = " user_id IN (SELECT user_id FROM #__order )  ";
////////////////
$query = "SELECT user_id, email, name "
. "\n FROM #__user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY user_id ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();

foreach($rows_user as $row) {
	$query = "SELECT id "
	. "\n FROM #__newsletter_user "
	. "\n WHERE email = '".$row->email."'" 
	;
	
	$php5DB->setQuery( $query );
	$id = $php5DB->loadResult();
	$rowUser = new NewsletterUser($php5DB);
	if($id) {
		$rowUser->id = $id;	
	} else {
		$rowUser->id = 0;
	}
	$rowUser->type = 2;
	$rowUser->store();
}
//sleep(300);
echo "Done<br >\n";
