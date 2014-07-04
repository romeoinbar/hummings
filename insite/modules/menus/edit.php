<?php
defined('PHP5_PHP') or die("Application is stopping!!!");
include_once $php5RootAdminPath."/modules/main/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/menu.class.php");
$rs_menuid = intval(php5GetParam($_REQUEST, 'id', 0));

$rs_menu = new Menus($php5DB_en);
$rs_menu->load($rs_menuid);
if (!$rs_menuid ||($rs_menu->title=="")){
	$redirect = sefBuild($php5WebPath, 'index.php?o=menus', 0);
}

$task 		= php5GetParam($_REQUEST, 'task', 'main');

//$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'menus'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'menus', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'save':
		$row = new Menus($php5DB_en);
		$row->bind( $_POST );	
		$row->menu_id = intval(php5GetParam($_REQUEST, 'menuid', 0));	
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
$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=0 AND publish>0 AND menu_id!=".$rs_menuid." ORDER BY sorting");
	$rows1 = $php5DB_en->loadObjectList();
	$rows = array();
	foreach ($rows1 as $row1){
		$row1->title = "&nbsp;&nbsp;- ".$row1->title;
		$rows[] = $row1;
		$php5DB_en->setQuery("SELECT * FROM #__menu WHERE parent_id=".$row1->menu_id." AND menu_id!=".$rs_menuid." AND publish>0 ORDER BY sorting");
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
	$str_content .= (($rs_menu->type=="content")&&($rs_menu->itemid==$content->content_category_id))?'<option value="'.$content->content_category_id.'" selected="selected">'.$content->category_name.'</option>':'<option value="'.$content->content_category_id.'">'.$content->category_name.'</option>';
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
	$str_pro .=(($rs_menu->type=="product")&&($rs_menu->itemid==$pros->product_category_id))?'<option value="'.$pros->product_category_id.'"  selected="selected">'.$pros->name.'</option>':'<option value="'.$pros->product_category_id.'">'.$pros->name.'</option>';
}
$smarty->assign("str_pro", $str_pro);
//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=menus&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=menus&m=edit&task=save', 0));
$smarty->assign("rs_menu", $rs_menu);
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
