<?php
/***************************************************************************
*                                request.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/

	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "article")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'content_category'));
$task 		= php5GetParam($_REQUEST, 'task', 'main');

switch ($task){
	case 'delete':
		delCat();
		break;
	case 'order':
		saveOrder();
		break;
	default:
		listCat();
		break;
}
function saveOrder(){
	global $php5DB_en, $redirect, $php5WebPath;
	$sorting = php5GetParam($_REQUEST, 'order', '');
	$list_id = explode(',', php5GetParam($_REQUEST, 'list', ''));
	array_pop($list_id);	
	for($i=0; $i<count($list_id); $i++){
		$php5DB_en->setQuery("UPDATE #__content_category SET sorting=".$sorting[$i]." WHERE content_category_id=".$list_id[$i]);
		//echo "UPDATE #__content_category SET sorting=".$sorting[$i]." WHERE content_category_id=".$list_id[$i];
		$php5DB_en->query();
	}	
	$redirect = sefBuild($php5WebPath, 'index.php?o=content_category', 0);
}
function delCat(){
	global $php5DB_en, $php5RootPath, $php5WebPath, $redirect ;
	$catid	= intval(php5GetParam($_REQUEST, 'id', 0));
	require_once($php5RootPath . "/classes/content.category.class.php");
	$row = new ContentCategory($php5DB_en);
	$row->load($catid);
	if ($row->category_name!=''){	
		$php5DB_en->setQuery("DELETE FROM #__content WHERE category_id=".$catid);
		$php5DB_en->query();
		$row->delete($catid);
	}
	$redirect = sefBuild($php5WebPath, 'index.php?o=content_category', 0);
}
function listCat(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content, $cat_type ;
	$tpl = sprintf($php5TemplateAdminFile, $language, 'content_category', 'main.tpl');
	
	$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE 1 ORDER BY sorting");
	$rows = $php5DB_en->loadObjectList();	
	$list = "";
	foreach ($rows as $row){
		$php5DB_en->setQuery("SELECT count(content_id) FROM #__content WHERE category_id=".$row->content_category_id);
		$row->countitem = intval($php5DB_en->loadResult());
		$row->type = $cat_type[$row->category_type];
		$row->category_name = stripslashes($row->category_name);
		$list .= $row->content_category_id.",";
		$row->link_del = sefBuild($php5WebPath, 'index.php?o=content_category&m=main&task=delete&id='.$row->content_category_id, 0);
		$row->link_edit = sefBuild($php5WebPath, 'index.php?o=content_category&m=edit&task=main&id='.$row->content_category_id, 0);
	}
	$smarty->assign("rows", $rows);
	$smarty->assign("list", $list.'0');
	$smarty->assign('link_add', sefBuild($php5WebPath, 'index.php?o=content_category&m=create', 0));
	$smarty->assign('link_order', sefBuild($php5WebPath, 'index.php?o=content_category&m=main&task=order', 0));
	$main_content .=  $smarty->fetch($tpl); 
}
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;