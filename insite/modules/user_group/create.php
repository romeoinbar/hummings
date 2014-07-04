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
require_once($php5RootPath . "/classes/newsletter_user_group.class.php");
$row = new NewsletterUserGroup($php5DB);
@ini_set('memory_limit', '500M');
$task 		= php5GetParam($_REQUEST, 'task', '');
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'user_group', 'create.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//list user
$rows_user = array();

//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'add':
		$row->bind( $_POST );
		if(!trim($row->name)) {
			$noerr = 0;
			$msg = sprintf($lang['_BLANK_MSG_'], 'Name');
		}
		if($noerr) {
			$row->id = 0;
			if(strlen($row->list_id) > 1 && substr($row->list_id, -1) == ';') {
				$row->list_id = substr($row->list_id, 0, strlen($row->list_id) -1);
			}
			if($row->list_id) {
				$where = array();
				$st = str_replace(';',',',$row->list_id);
				$where[] = " id IN ($st) ";
				$query = "SELECT id, email "
				. "\n FROM #__newsletter_user "
				. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
				. "\n ORDER BY id ";
				$php5DB->setQuery( $query );
				$rows_user = $php5DB->loadObjectList();
				//get email
				$arr = array();
				foreach($rows_user as $row_temp) {
					$arr[] = $row_temp->email;
				}
				$row->list_email = implode(";", $arr);								
			} else {
				$row->list_email = '';
				$row->list_id = '';				
			}
			$publish 		= php5GetParam($_REQUEST, 'publish', '');
			if(!$publish[0]) {
				$row->status = 0;
			} else {
				$row->status = 1;
			}
			if (!$row->store()) {
				$msg = $msgAlert = "Error!!! Please try again!!!";		
			} else {
				$msg = $msgAlert = $lang['_UPDATE_MSG_'];
				$redirect = sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0);
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
$smarty->assign('list_id', $row->list_id);
$smarty->assign('user_type', $define->NEWSLETTER_TYPE());
$smarty->assign('urlloaduser', $php5WebPath.'/load_newsletter_user.php');
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user_group&m=create&task=add', 0));
$smarty->assign('main', $smarty->fetch($tpl));

return;
