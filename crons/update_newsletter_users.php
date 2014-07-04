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
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
///
//$query = "UPDATE #__newsletter_user SET type=0 ";
//$php5DB->setQuery( $query );
//$php5DB->query();

//list user
$arrId3 = array();
$arrEmail3 = array();
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
		//$rowUser->id = $id;	
		continue;
	} else {
		$rowUser->id = 0;
		$rowUser->name = $row->name;
		$rowUser->email = $row->email;
	}
	$rowUser->type = 1;
	
	$rowUser->store();
	$arrId3[] = $rowUser->id;
	$arrEmail3[] = $row->email;
}

if(count($arrId3) > 0) {
	$rowGroup = new NewsletterUserGroup($php5DB);
	$rowGroup->load(1);
	$arr1 = explode(';', $rowGroup->list_id);
	$arr2 = explode(';', $rowGroup->list_email);
	foreach($arrId3 as $k => $v) {
		$arr1[] = $v;
		$arr2[] = $arrEmail3[$k];
	}
	$rowGroup->list_id = implode(";", $arr1);
	$rowGroup->list_email = implode(";", $arr2);
	$rowGroup->store();
}

//list user
$arrId2 = array();
$arrEmail2 = array();
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
		//$rowUser->id = $id;	
		continue;
	} else {
		$rowUser->id = 0;
		$rowUser->name = $row->name;
		$rowUser->email = $row->email;		
	}
	$rowUser->type = 2;
	$rowUser->store();
	$arrId2[] = $rowUser->id;
	$arrEmail2[] = $row->email;	
}

if(count($arrId2) > 0) {
	$rowGroup = new NewsletterUserGroup($php5DB);
	$rowGroup->load(2);
	$arr1 = explode(';', $rowGroup->list_id);
	$arr2 = explode(';', $rowGroup->list_email);
	foreach($arrId2 as $k => $v) {
		$arr1[] = $v;
		$arr2[] = $arrEmail2[$k];
	}
	$rowGroup->list_id = implode(";", $arr1);
	$rowGroup->list_email = implode(";", $arr2);
	$rowGroup->store();
}
////////////////////////////
$arrId1 = array();
$arrEmail1 = array();
$where = array();
$rows_user = array();
$where[] = " email != '' ";
$where[] = " type = 0 ";
////////////////
$query = "SELECT id, email, name "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();
foreach($rows_user as $row) {
	$rowUser = new NewsletterUser($php5DB);
	$rowUser->load($row->id);
	$rowUser->type = 3;
	$rowUser->store();
	$arrId1[] = $row->id;
	$arrEmail1[] = $row->email;
}
if(count($arrId1) > 0) {
	$rowGroup = new NewsletterUserGroup($php5DB);
	$rowGroup->load(3);
	
	$arr1 = explode(';', $rowGroup->list_id);
	$arr2 = explode(';', $rowGroup->list_email);
	foreach($arrId1 as $k => $v) {
		$arr1[] = $v;
		$arr2[] = $arrEmail1[$k];
	}
	$rowGroup->list_id = implode(";", $arr1);
	$rowGroup->list_email = implode(";", $arr2);
	$rowGroup->store();
}
//sleep(300);
echo "Done<br >\n";
;