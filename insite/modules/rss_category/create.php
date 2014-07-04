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
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'rss_category'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'rss_category', 'create.tpl');
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
		$publish 		= php5GetParam($_REQUEST, 'publish', '');
		if(!$publish[0]) {
			$row->status = 0;
		} else {
			$row->status = 1;
		}
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
				$redirect = sefBuild($php5WebPath, 'index.php?o=rss_category&m=main', 0);
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
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=rss_category&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=rss_category&m=create&task=add', 0));
$smarty->assign('main', $smarty->fetch($tpl));
//$smarty->display($tpl);

return;
