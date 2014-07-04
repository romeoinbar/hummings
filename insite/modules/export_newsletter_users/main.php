<?php
/***************************************************************************
*                                main.php
 *
 *   Begin date             : 
 *   Copyright              : 
 *   Email                  : 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
require_once($php5RootPath . "/includes/csv.php");
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'export'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'export_newsletter_users', 'main.tpl');
if(!is_file($tpl )) {
    die("can not find template");
}
@ini_set('memory_limit','1500M');
$arrId1 = array();
$arrEmail1 = array();
$arrId2 = array();
$arrEmail2 = array();
$arrId3 = array();
$arrEmail3 = array();
$type 		= php5GetParam($_REQUEST, 'type', '');
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
$where = array();
if($type != '') {
	$where[] = "id='$type'";
}
$query = "SELECT * "
. "\n FROM #__newsletter_user_group "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT 100";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
$arrGroup = array();
$arrId = array();
$arrUncheckId =  array();
foreach($rows as $row) {
	$arrGroup[$row->id] = $row->name;
	$arr1 = explode(';', $row->list_id);
	foreach($arr1 as $v1) {
		$arrId[$row->id][$v1] = $v1; 
	}	
	$arr2 = explode(';', $row->list_uncheck_id);
	foreach($arr2 as $v2) {
		$arrUncheckId[$row->id][$v2] = $v2; 
	}	
}
$rows = $row = NULL;
/*
$row = new NewsletterUserGroup($php5DB);
$row->load(1);
$arr = explode(';', $row->list_id);
foreach($arr as $v) {
	$arrId3[$v] = $v; 
}
////////////////////
$row = new NewsletterUserGroup($php5DB);
$row->load(2);
$arr = explode(';', $row->list_id);
foreach($arr as $v) {
	$arrId2[$v] = $v; 
}
//////////////////////////
$row = new NewsletterUserGroup($php5DB);
$row->load(3);
$arr = explode(';', $row->list_id);
foreach($arr as $v) {
	$arrId1[$v] = $v; 
}*/

$dir = $php5RootPath.'/images/export/';
$name = "newsletter_users_" . date("Ymd");
$startLimit 		= 1;
$limit 		= 100000;
if($startLimit > 0) {
	$startLimit = $startLimit - 1;
}
$where = array();

if($type != '') {
	if(count($arrId) > 0) {
		if(count($arrUncheckId) > 0) {
			$result = array_merge((array)$arrId, (array)$arrUncheckId);
		} else {
			$result = $arrId;
		}
	} else {
		$result = $arrUncheckId;
	}	//print_r($result);die;
	//$where[] = " id IN (".implode( ',', $result ).") ";
}
$where[] = "id !=1";
$query = "SELECT * "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id desc LIMIT $startLimit, $limit";
$php5DB->setQuery( $query );//echo $query;
$rows = $php5DB->loadObjectList();
//error
if($php5DB->_errorNum) {
	die("System error.");
}
//////////////////
$arrCSV = array();
$i = 0;
$arrCSV[$i][] = "name";
$arrCSV[$i][] = "email";
$arrCSV[$i][] = "group";
$arrCSV[$i][] = "ticked";
$arrCSV[$i][] = "status";

if(is_array($rows) && count($rows) > 0) {
	foreach($arrGroup as $k => $v) {
		foreach($rows as $row) {
			if(isset($arrId[$k][$row->id])) {
				$i++;
				$arrCSV[$i][0] = $row->name ? $row->name : $row->email;
				$arrCSV[$i][1] = $row->email;
				$arrCSV[$i][2] = $v;				
				$arrCSV[$i][3] = "yes";
				$arrCSV[$i][4] = $row->status ? 'bounced' : 'live';
			} else if(isset($arrUncheckId[$k][$row->id])) {
				$i++;
				$arrCSV[$i][0] = $row->name ? $row->name : $row->email;
				$arrCSV[$i][1] = $row->email;
				$arrCSV[$i][2] = $v;				
				$arrCSV[$i][3] = "no";
				$arrCSV[$i][4] = $row->status ? 'bounced' : 'live';
			} else {
				continue;
			}
		}
	}

	$redirect = $php5WebPath."/images/export/$name.csv";
}

$csv = new CSVCreation($dir);
$csv->createcsv($arrCSV, $name, 1);	
exit;
//$smarty->assign('main', $smarty->fetch($tpl));



