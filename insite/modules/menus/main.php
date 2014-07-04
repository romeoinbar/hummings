<?php
	if(!$define->checkAdminType($php5Session->getVar("admin_type"), "menu")) {
		$msgAlert='Not allowed to use. Please try again.';
		$redirect = sefBuild($php5WebPath, 'index.php?o=main&m=main', 0);	
		return;
	}	
	
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'menus'));
$task 		= php5GetParam($_REQUEST, 'task', 'main');

switch ($task){
	case 'delete':
		delMenu();
		break;
	case 'order':
		saveOrder();
		break;
	default:
		listMenu();
		break;
}
function saveOrder(){
	global $php5DB_en, $redirect, $php5WebPath;
	$sorting = php5GetParam($_REQUEST, 'order', '');
	$list_id = explode(',', php5GetParam($_REQUEST, 'list', ''));
	array_pop($list_id);
	for($i=0; $i<count($list_id); $i++){
		$php5DB_en->setQuery("UPDATE #__menu SET sorting=".$sorting[$i]." WHERE menu_id=".$list_id[$i]);
		$php5DB_en->query();
	}
	
	$redirect = sefBuild($php5WebPath, 'index.php?o=menus', 0);
}
function delMenu(){
	global $php5DB_en, $php5RootPath, $php5WebPath, $redirect ;
	$id	= intval(php5GetParam($_REQUEST, 'id', 0));
	require_once($php5RootPath . "/classes/menu.class.php");
	$row = new Menus($php5DB_en);
	$row->load($id);
	if ($row->title!=''){		
		
		$php5DB_en->setQuery("DELETE FROM #__menu WHERE parent_id=".$id);
		$php5DB_en->query();
		
		$row->delete($id);
	}
	$redirect = sefBuild($php5WebPath, 'index.php?o=menus', 0);
}
function listMenu(){
	global $php5DB_en, $smarty, $php5TemplateAdminFile, $language, $php5WebPath, $main_content ;
	$tpl = sprintf($php5TemplateAdminFile, $language, 'menus', 'main.tpl');
	
	$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=0 ORDER BY sorting");
	$rows1 = $php5DB_en->loadObjectList();
	$rows = array();
	$list='';
	foreach ($rows1 as $row1){
		$row1->link_del = sefBuild($php5WebPath, 'index.php?o=menus&m=main&task=delete&id='.$row1->menu_id, 0);
		$row1->link_edit = sefBuild($php5WebPath, 'index.php?o=menus&m=edit&task=main&id='.$row1->menu_id, 0);
		$row1->item_name = getItemID($row1->itemid, $row1->type);
		$rows[] = $row1;
		$list .= $row1->menu_id.", ";
		$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=".$row1->menu_id." ORDER BY sorting");
		$rows2 = $php5DB_en->loadObjectList();
		foreach ($rows2 as $row2){
			$row2->title = "&nbsp;&nbsp;<sup>|_ </sup>".$row2->title;			
			$row2->link_del = sefBuild($php5WebPath, 'index.php?o=menus&m=main&task=delete&id='.$row2->menu_id, 0);
			$row2->link_edit = sefBuild($php5WebPath, 'index.php?o=menus&m=edit&task=main&id='.$row2->menu_id, 0);
			$row2->item_name = getItemID($row2->itemid, $row2->type);
			$rows[] = $row2;
			$list .= $row2->menu_id.", ";
		}
	}
	$smarty->assign("rows", $rows);
	$smarty->assign("list", $list.'0');
	$smarty->assign('link_add', sefBuild($php5WebPath, 'index.php?o=menus&m=create', 0));
	$smarty->assign('link_order', sefBuild($php5WebPath, 'index.php?o=menus&m=main&task=order', 0));
	$main_content .=  $smarty->fetch($tpl); 
}
function getItemID($id, $param){
	global $php5DB_en;
	if ($param=="product"){
		$php5DB_en->setQuery("SELECT `name`, parent_id FROM #__product_category WHERE product_category_id=".$id);
		$php5DB_en->loadObject($row);
		if ($row->parent_id==0)
			$rs = $row->name;
		else{
			$php5DB_en->setQuery("SELECT `name`FROM #__product_category WHERE product_category_id=".$row->parent_id);
			$rs = $php5DB_en->loadResult().' >> '.$row->name;
		}
	} else { 
		$php5DB_en->setQuery("SELECT category_name FROM #__content_category WHERE content_category_id=".$id);		
		$rs = $php5DB_en->loadResult();
	
	}
	return $rs;
}
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;