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
$type_id = $id 		= php5GetParam($_REQUEST, 'id', '');
$row->load($id);
if(!$row->name) {
	return;
}
/*if($id==1) {
	$type_id = 3;
} else if($id==2) {
	$type_id = 2;
} else if($id==3) {
	$type_id = 0;
} else if($id==4) {
	$type_id = 4;
} */
$smarty->set_compile_path(sprintf($php5RootAdminTempalteCPath, 'user_group'));
$tpl = sprintf($php5TemplateAdminFile, $language, 'user_group', 'edit.tpl');
if(!is_file($tpl )) {
	die("can not find template");
}
/*$st = str_replace(';',',',$row->list_id);
//list user
$where = array();
$rows_user = array();
$where[] = " email != '' ";
if($st) {
	$where[] = " id IN ($st) ";
} else {
	$where[] = " 1 > 2 ";
}
////////////////
$query = "SELECT id "
. "\n FROM #__newsletter_user "
. ( count( $where ) ? "\n WHERE " . implode( ' AND ', $where ) : "" )
. "\n ORDER BY id ";
$php5DB->setQuery( $query );
$rows_user = $php5DB->loadObjectList();*/

//check task
$msg = '';
$noerr = 1;
switch($task)
{
	case 'update':
		$row->bind( $_POST );
		if(!trim($row->name)) {
			$noerr = 0;
			$msg= sprintf($lang['_BLANK_MSG_'], 'Name');
		}
		if($noerr) {
			if(strlen($row->list_id) > 1 && substr($row->list_id, -1) == ';') {
				$row->list_id = substr($row->list_id, 0, strlen($row->list_id) -1);
			}
			/*if($row->list_id) {
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
			}*/
			/*$chkUser 		= php5GetParam($_REQUEST, 'chkUser', '');
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
			}*/
			
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
/*$usertotal = count($rows_user);
$users = array();
$nextUsers = array();
$i = 0;
$j = 0;
$k = 0;
if(count($rows_user)) {
	foreach($rows_user as $row_temp) {
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
		$users[$i][$j]['name'] = '';
		$users[$i][$j]['email'] = '';
		$users[$i][$j]['checked'] = 0;
		$j++;
		
	}
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
}*/
if($msg) {
	$smarty->assign('msg', $msg);
}
//assign
$smarty->assign('name', $row->name);
$smarty->assign('status', $row->status);
$smarty->assign('checkAll', 0);
/*if(count($users) > 0) {
	$smarty->assign('users', $users);
	$smarty->assign('usertotal', $usertotal);
	if(count($arr) == $usertotal) {
		$smarty->assign('checkAll', 1);
	}
}*/
//$smarty->assign('list_id', $row->list_id);
$smarty->assign('type_id', $type_id);
$smarty->assign('link_import', sefBuild($php5WebPath, 'index.php?o=import_newsletter_users', 0));
$smarty->assign('link_export', sefBuild($php5WebPath, 'index.php?o=export_newsletter_users', 0)."?&type=$type_id");
$smarty->assign('urlloaduser', $php5WebPath.'/load_newsletter_user.php');
$smarty->assign('link_return', sefBuild($php5WebPath, 'index.php?o=user_group&m=main', 0));
$smarty->assign('action', sefBuild($php5WebPath, 'index.php?o=user_group&m=edit&task=update&id='.$id, 0));
$smarty->assign('main', $smarty->fetch($tpl));

return;
