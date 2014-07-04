<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
global $main_content, $cat_type;
include_once "$php5RootAdminPath/modules/header.php"; 
$main_content = ""; 
require_once($php5RootPath . "/classes/content.category.class.php");
$catid = intval(php5GetParam($_REQUEST, 'id', 0));

$cat = new ContentCategory($php5DB_en);
$cat->load($catid);
if (!$catid ||($cat->category_name=="")){
	$redirect = sefBuild($php5WebPath, 'index.php?o=content_category', 0);
}
$smarty->assign("cat", $cat);
$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'content_category'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'content_category', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'save':
		$row = new ContentCategory($php5DB_en);
		$row->bind( $_POST );	
		$row->content_category_id = intval(php5GetParam($_REQUEST, 'catid', 0));	
		if (php5GetParam($_REQUEST, 'show_bottom', 0)>0){
			$php5DB_en->setQuery("UPDATE #__content_category SET show_bottom=0");
			$php5DB_en->query();
		}
		if(!trim($row->category_name)) {
			$noerr = 0;
			$msg = $msgAlert = "Please enter the Category name!";
		}
		if($noerr) {				
			if (!$row->store()) {
				$msg = $msgAlert = "Error! Please try again.";		
			} else {				
				$redirect = sefBuild($php5WebPath, 'index.php?o=content_category&m=main', 0);
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
$smarty->assign('cat_type', $cat_type);
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=content_category&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=content_category&m=edit&task=save', 0));
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;