<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/campaign.class.php");
$row = new Campaign($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'campaigns'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'campaigns', 'create.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'add':
		$row->bind( $_POST );			
		$row->content = trim($_POST['content']);
		$row->started_date = date("Y-m-j H:i:s", strtotime(php5GetParam($_REQUEST, 'started_date', '')));
		$row->finished_date = date("Y-m-j H:i:s", strtotime(php5GetParam($_REQUEST, 'finished_date', '')));				
		$row->posted_date = date("Y-m-j H:i:s");
		if(!trim($row->campaign_name)) {
			$noerr = 0;
			$msg = $msgAlert = "Please enter the campaign name!";
		}
		if($noerr) {				
			if (!$row->store()) {
				$msg = $msgAlert = "Error! Please try again.";		
			} else {				
				$redirect = sefBuild($php5WebPath, 'index.php?o=campaigns&m=main', 0);
			}
		}		
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
	
//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=campaigns&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=campaigns&m=create&task=add', 0));
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
