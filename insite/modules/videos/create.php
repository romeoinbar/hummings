<?php
//error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/video.class.php");
$row = new VideoBlog($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'videos'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'videos', 'create.tpl');
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
		$row->embed = (php5GetParam($_REQUEST, 'type', '')=="youtube")?trim($_POST['embed']):"";
		$row->video_path = (php5GetParam($_REQUEST, 'type', '')=="file")?trim($_POST['video_path']):"";
		$row->desc = trim($_POST['desc']);
		$row->created_date = date("Y-m-j H:i:s");
						
		if (!$row->store()) {
			$msg = $msgAlert = "Error! Please try again.";		
		} else {				
			$redirect = sefBuild($php5WebPath, 'index.php?o=videos&m=main', 0);
		}
			
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}
//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=videos&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=videos&m=create&task=add', 0));
$smarty->assign('path_upload_file', sefBuild($php5WebPath, 'index.php?o=videos&m=upload_file', 0));

$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
