<?php
 	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "articles")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'videos'));
$task 		= php5GetParam($_REQUEST, 'task', 'main');

switch ($task){
	case 'delete':
		delVideo();
		break;
	case 'order':
		saveOrder();
		break;
	default:
		listVideo();
		break;
}
function saveOrder(){
	global $php5DB_en, $redirect, $php5WebPath;
	$sorting = php5GetParam($_REQUEST, 'order', '');
	$list_id = explode(',', php5GetParam($_REQUEST, 'list', ''));
	array_pop($list_id);
	for($i=0; $i<count($list_id); $i++){
		$php5DB_en->setQuery("UPDATE #__videos SET sorting=".$sorting[$i]." WHERE video_id=".$list_id[$i]);
		$php5DB_en->query();
	}
	
	$redirect = sefBuild($php5WebPath, 'index.php?o=menus', 0);
}
function delVideo(){
	global $php5DB_en, $php5RootPath, $php5WebPath, $redirect ;
	$id	= intval(php5GetParam($_REQUEST, 'id', 0));
	require_once($php5RootPath . "/classes/video.class.php");
	$row = new VideoBlog($php5DB_en);
	$row->load($id);
	if ($row->video_id){
		if (($row->type=="file")&&($row->video_path!="")){
			unlink($php5RootPath."/images/".$row->video_path);
		}
		$row->delete($id);
	}
	$redirect = sefBuild($php5WebPath, 'index.php?o=videos', 0);
}
function listVideo(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;
	$tpl = sprintf($php5TemplateAdminFile, $language, 'videos', 'main.tpl');
	
	$php5DB_en->setQuery("SELECT * FROM #__videos WHERE 1 ORDER BY sorting");
	$rows = $php5DB_en->loadObjectList();	
	$list='';
	foreach ($rows as $row){
		$list .= $row->video_id.",";
		$row->desc = stripslashes($row->desc);		
		$row->link_del = sefBuild($php5WebPath, 'index.php?o=videos&m=main&task=delete&id='.$row->video_id, 0);
		$row->link_edit = sefBuild($php5WebPath, 'index.php?o=videos&m=edit&task=main&id='.$row->video_id, 0);	
	}
	$smarty->assign("rows", $rows);
	$smarty->assign("list", $list.'0');
	$smarty->assign('link_add', sefBuild($php5WebPath, 'index.php?o=videos&m=create', 0));
	$smarty->assign('link_order', sefBuild($php5WebPath, 'index.php?o=videos&m=main&task=order', 0));
	$main_content .=  $smarty->fetch($tpl); 
}

$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;