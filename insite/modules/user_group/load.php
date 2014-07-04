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
$id 		= php5GetParam($_REQUEST, 'id', '');
$next 		= php5GetParam($_REQUEST, 'next', '');

$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'user_group', 'load.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
//list user
$where = array();
$rows_temp = array();
$where[] = " email != '' ";
$query = "SELECT id, name, email "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id LIMIT $next, 21";
$php5DB->setQuery( $query );
$rows_user = $rows_temp = $php5DB->loadObjectList();
$usertotal = count($rows_temp);
$users = array();
$i = 0;
$j = 0;
$k = 0;
if(count($rows_temp)) {
	foreach($rows_temp as $row_temp) {
		if($j==3) {
			$i++;
			$j = 0;
		}
		if($j == 0) {
			$users[$i][0]['idx'] = $k++;
			$users[$i][0]['id'] = '';
			$users[$i][0]['name'] = '';
			$users[$i][0]['email'] = '';
			$users[$i][0]['checked'] = 0;
			$users[$i][1]['idx'] = $k++;
			$users[$i][1]['id'] = '';
			$users[$i][1]['name'] = '';
			$users[$i][1]['email'] = '';
			$users[$i][1]['checked'] = 0;
			$users[$i][2]['idx'] = $k++;
			$users[$i][2]['id'] = '';
			$users[$i][2]['name'] = '';
			$users[$i][2]['email'] = '';
			$users[$i][2]['checked'] = 0;
		}
		$users[$i][$j]['id'] = $row_temp->id;
		$users[$i][$j]['name'] = $row_temp->name;
		$users[$i][$j]['email'] = $row_temp->email;
		$users[$i][$j]['checked'] = 0;
		$j++;
	}
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
			$msg = $msgAlert = sprintf($lang['_BLANK_MSG_'], 'Name');
		}
		if($noerr) {
			$chkUser 		= php5GetParam($_REQUEST, 'chkUser', '');
			if(count($chkUser) > 0  && is_array($chkUser) ) {
				$row->list_id = implode(";", $chkUser);
				//get email
				$arr = array();
				foreach($rows_user as $row_temp) {
					foreach($chkUser as $k => $v) {
						if($v == $row_temp->id) {
							$arr[] = $row_temp->email;
							break;
						}
					}
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
//check user
$arr = explode(';', $row->list_id);
if(count($arr) > 0) {
	$i = 0;
	foreach($users as $i => $arrTemps) {
		foreach($arrTemps as $j => $arrTemp) {
			foreach($arr as $k => $v) {
				if($v == $arrTemp['id']) {
					$users[$i][$j]['checked'] = 1;
					break;
				}
			}
		}
		
	}
}
if($msg) {
	$smarty->assign('msg', $msg);
}
//assign
$smarty->assign('name', $row->name);
$smarty->assign('status', $row->status);
$smarty->assign('checkAll', 0);
if(count($users) > 0) {
	$smarty->assign('users', $users);
	$smarty->assign('usertotal', $usertotal);
	if(count($arr) == $usertotal) {
		$smarty->assign('checkAll', 1);
	}
}


$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user_group&m=edit&task=update&id='.$id, 0));
$smarty->assign('main', $smarty->fetch($tpl));

return;
