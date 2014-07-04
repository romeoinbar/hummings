<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include_once $php5RootAdminPath."/modules/main/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/video.class.php");
$rs_videoid = intval(php5GetParam($_REQUEST, 'id', 0));

$rs_video = new VideoBlog($php5DB_en);
$rs_video->load($rs_videoid);
if (!$rs_video->video_id){
	$redirect = sefBuild($php5WebPath, 'index.php?o=videos', 0);
}
$rs_video->embed = stripslashes($rs_video->embed);
$rs_video->desc = stripslashes($rs_video->desc);
$task 		= php5GetParam($_REQUEST, 'task', 'main');

//$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'menus'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'videos', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'save':
		$row = new VideoBlog($php5DB_en);
		$row->bind( $_POST );	
		$row->video_id = intval(php5GetParam($_REQUEST, 'videoid', 0));							
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
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=videos&m=edit&task=save', 0));
$smarty->assign('path_upload_file', sefBuild($php5WebPath, 'index.php?o=videos&m=upload_file', 0));
$smarty->assign("rs_video", $rs_video);
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
