<?php
error_reporting(0);
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/menu.class.php");
$row = new Menus($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'menus'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'menus', 'create.tpl');
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
		if(!trim($row->title)) {
			$noerr = 0;
			$msg = $msgAlert = "Please enter the title!";
		}
		if($noerr) {				
			if (!$row->store()) {
				$msg = $msgAlert = "Error! Please try again.";		
			} else {				
				$redirect = sefBuild($php5WebPath, 'index.php?o=menus&m=main', 0);
			}
		}		
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}

// Parent Item
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=0 ORDER BY sorting");
	$rows1 = $php5DB_en->loadObjectList();
	$rows = array();
	foreach ($rows1 as $row1){
		$row1->title = "&nbsp;&nbsp;- ".$row1->title;
		$rows[] = $row1;
		$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=".$row1->menu_id." ORDER BY sorting");
		$rows2 = $php5DB_en->loadObjectList();
		if (count($rows2)) {
			foreach ($rows2 as $row2){
				$row2->title = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sup>|_</sup> ".$row2->title;
				$rows[] = $row2;
			}
		}
	}
	$smarty->assign("rows", $rows);
	
// Content Item
$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE publish>0 ORDER BY sorting");
$contents = $php5DB_en->loadObjectList();
$str_content = '<option value="0">--- Choose an item ---</option>';
foreach ($contents as $content){
	$str_content .= '<option value="'.$content->content_category_id.'">'.$content->category_name.'</option>';
}
$smarty->assign("str_content", $str_content);

$php5DB_en->setQuery("SELECT * FROM #__product_category WHERE parent_id=0 AND publish>0 ORDER BY sorting");
$pross1 = $php5DB_en->loadObjectList();
$pross = array();
$str_pro = '<option value="0">--- Choose an item ---</option>';
foreach ($pross1 as $pros1){
	$pros1->name = $pros1->name;
	$pross[] = $pros1;		
	$php5DB_en->setQuery("SELECT * FROM #__product_category WHERE parent_id=".$pros1->product_category_id." AND publish>0 ORDER BY sorting");
	$pross2 = $php5DB_en->loadObjectList();
	if (count($pross2)) {
		foreach ($pross2 as $pros2){
			$pros2->name = "&nbsp;&nbsp;<sup>|_ </sup> ".$pros2->name;
			$pross[] = $pros2;
		}
	}
}
foreach ($pross as $pros){		
	$str_pro .= '<option value="'.$pros->product_category_id.'">'.$pros->name.'</option>';
}
$smarty->assign("str_pro", $str_pro);
//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=menus&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=menus&m=create&task=add', 0));
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
