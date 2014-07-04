<?php
/***************************************************************************
*                                register.php
 *
 *   Begin date           	: 
 *   Copyright            	: 
 *   Email                	: 
 ***************************************************************************/
defined('PHP5_PHP') or die("Application is stopping!!!");
//checkLogin();
require_once($php5RootPath . "/classes/category.class.php");
$row = new Category($php5DB_en);

$task 		= php5GetParam($_REQUEST, 'task', '');
$id 		= php5GetParam($_REQUEST, 'id', '');
$row->load($id);
if(!$row->name) {
	return;
}
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'news_category'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'news_category', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'update':
		$row->bind( $_POST );
		if(!trim($row->name)) {
			$noerr = 0;
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Category');
		}
		if($noerr) {
			$row->type = 2;
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=news_category&m=main', 0);
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
$smarty->assign('name', $row->name);
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=news_category&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=news_category&m=edit&task=update&id='.$id, 0));
$smarty->display($tpl);

return;
