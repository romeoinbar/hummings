<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");

	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "articles")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'articles'));
$task 		= php5GetParam($_REQUEST, 'task', 'main'); 
switch ($task){
	case 'delete':
		delArticle();
		break;
	case 'order':
		saveOrder();
		break;
	default:
		listArticles();
		break;
}
function saveOrder(){
	global $php5DB_en, $redirect, $php5WebPath;
	$sorting = php5GetParam($_REQUEST, 'order', '');
	$list_id = explode(',', php5GetParam($_REQUEST, 'list', ''));
	array_pop($list_id);
	for($i=0; $i<count($list_id); $i++){
		$php5DB_en->setQuery("UPDATE #__content SET sorting=".$sorting[$i]." WHERE content_id=".$list_id[$i]);
		//echo "UPDATE #__content SET sorting=".$sorting[$i]." WHERE content_id=".$list_id[$i]."<br>";
		$php5DB_en->query();
	}
	
	$redirect = sefBuild($php5WebPath, 'index.php?o=articles', 0);
}
function delArticle(){
	global $php5DB_en, $php5RootPath, $php5WebPath, $redirect ;
	$id	= intval(php5GetParam($_REQUEST, 'id', 0));
	require_once($php5RootPath . "/classes/content.class.php");
	$row = new Content($php5DB_en);
	$row->load($id);
	if ($row->title!=''){		
		$row->delete($id);
	}
	$redirect = sefBuild($php5WebPath, 'index.php?o=articles', 0);
}
function listArticles(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;	
	$php5DB_en->setQuery("SELECT c.*, cat.category_name 
						FROM #__content AS c
						INNER JOIN #__content_category AS cat ON c.category_id = cat.content_category_id
						WHERE 1 
						ORDER BY c.sorting ASC, c.created_date DESC");	
	$rows = $php5DB_en->loadObjectList();	
	$list='';
	foreach ($rows as $row){
		$list .= $row->content_id.",";
		$row->title = stripslashes($row->title);
		$row->created_date = date("m.j.Y H:i", strtotime($row->created_date));
		$row->category_name = stripslashes($row->category_name);		
		$row->link_del = sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=delete&id='.$row->content_id, 0);
		$row->link_edit = sefBuild($php5WebPath, 'index.php?o=articles&m=edit&task=main&id='.$row->content_id, 0);	
	}
	$smarty->assign("rows", $rows);
	$smarty->assign("list", $list.'0');
	$smarty->assign('link_add', sefBuild($php5WebPath, 'index.php?o=articles&m=create', 0));
	$smarty->assign('link_order', sefBuild($php5WebPath, 'index.php?o=articles&m=main&task=order', 0));	
 	$tpl = sprintf($php5TemplateAdminFile, $language, 'articles', 'main.tpl');
	$main_content .=  $smarty->fetch($tpl); 
	//$smarty->display($tpl);
}
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;