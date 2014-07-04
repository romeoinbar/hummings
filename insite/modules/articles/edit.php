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
require_once($php5RootPath . "/classes/content.class.php");
$contentid = intval(php5GetParam($_REQUEST, 'id', 0));

$content = new Content($php5DB_en);
$content->load($contentid);
if (!$contentid ||($content->title=="")){
	$redirect = sefBuild($php5WebPath, 'index.php?o=articles', 0);
}
$content->title = stripslashes($content->title);
$content->introtext = php5FormatContent($content->introtext);
$content->fulltext = php5FormatContent($content->fulltext);
$smarty->assign("content", $content);
$task 		= php5GetParam($_REQUEST, 'task', 'main');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'articles'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'articles', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'save':
		$row = new Content($php5DB_en);
		$row->bind( $_POST );
		$row->alias = php5CleanSpecialChar(php5GetParam($_REQUEST, 'title', ''));	
		$row->introtext = trim($_POST['introtext']);	
		$row->fulltext = trim($_POST['fulltext']);			
		$row->modified_by = $php5Session->getVar("admin_name");
		$row->modified_date = date("Y-m-j H:i:s");
		$row->content_id = intval(php5GetParam($_REQUEST, 'contentid', 0));	
		if(!trim($row->title)) {
			$noerr = 0;
			$msg = $msgAlert = "Please enter the title!";
		}
		if($noerr) {				
			if (!$row->store()) {
				$msg = $msgAlert = "Error! Please try again.";		
			} else {				
				$redirect = sefBuild($php5WebPath, 'index.php?o=articles&m=main', 0);
			}
		}		
		break;
	default:
		break;	
		
}
if($msg) {
	$smarty->assign('msg', $msg);
}

// Content category
$php5DB_en->setQuery("SELECT * FROM #__content_category WHERE publish>0 ORDER BY category_name");
$cats = $php5DB_en->loadObjectList();
$smarty->assign('cats', $cats);

//assign
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=articles&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=articles&m=edit&task=save', 0));
$main_content .=  $smarty->fetch($tpl); 
$smarty->assign('main',$main_content);	
require_once($php5RootAdminPath . "/modules/main/bottom.php");
return;
