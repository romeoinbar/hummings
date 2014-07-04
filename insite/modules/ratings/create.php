<?php
/***************************************************************************
*                                ratings.php
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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'ratings'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'ratings', 'create.tpl');
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
		if(!trim($row->name)) {
			$noerr = 0;
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Category');
		}
		if($noerr) {
			$row->id = '';
			$row->type = 2;
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=ratings&m=main', 0);
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
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=ratings&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=ratings&m=create&task=add', 0));
$smarty->display($tpl);

return;
